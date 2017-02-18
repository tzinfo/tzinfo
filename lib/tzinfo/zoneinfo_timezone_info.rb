module TZInfo
  # An InvalidZoneinfoFile exception is raised if an attempt is made to load an
  # invalid zoneinfo file.
  class InvalidZoneinfoFile < StandardError
  end

  # Represents a timezone defined by a compiled zoneinfo TZif (\0, 2 or 3) file.
  #
  # @private
  class ZoneinfoTimezoneInfo < TransitionDataTimezoneInfo #:nodoc:

    # Constructs the new ZoneinfoTimezoneInfo with an identifier and path
    # to the file.
    def initialize(identifier, file_path)
      transitions_or_constant_offset = File.open(file_path, 'rb') do |file|
        parse(file)
      end

      super(identifier, transitions_or_constant_offset)
    end

    private
      # Unpack will return unsigned 32-bit integers. Translate to
      # signed 32-bit.
      def make_signed_int32(long)
        long >= 0x80000000 ? long - 0x100000000 : long
      end

      # Unpack will return a 64-bit integer as two unsigned 32-bit integers
      # (most significant first). Translate to signed 64-bit
      def make_signed_int64(high, low)
        unsigned = (high << 32) | low
        unsigned >= 0x8000000000000000 ? unsigned - 0x10000000000000000 : unsigned
      end

      # Read bytes from file and check that the correct number of bytes could
      # be read. Raises InvalidZoneinfoFile if the number of bytes didn't match
      # the number requested.
      def check_read(file, bytes)
        result = file.read(bytes)

        unless result && result.length == bytes
          raise InvalidZoneinfoFile, "Expected #{bytes} bytes reading '#{file.path}', but got #{result ? result.length : 0} bytes"
        end

        result
      end

      # Zoneinfo doesn't include the offset from standard time (std_offset).
      # Derive the missing offsets by looking at changes in the total UTC
      # offset.
      #
      # This will be run through forwards and then backwards by the parse
      # method.
      def derive_offsets(transitions, offsets)
        previous_offset = nil

        transitions.each do |t|
          offset = offsets[t[:offset]]

          if !offset[:std_offset] && offset[:is_dst] && previous_offset
            difference = offset[:utc_total_offset] - previous_offset[:utc_total_offset]

            if previous_offset[:is_dst]
              if previous_offset[:std_offset]
                std_offset = previous_offset[:std_offset] + difference
              else
                std_offset = nil
              end
            else
              std_offset = difference
            end

            if std_offset && std_offset > 0
              offset[:std_offset] = std_offset
              offset[:utc_offset] = offset[:utc_total_offset] - std_offset
            end
          end

          previous_offset = offset
        end
      end

      # Parses a zoneinfo file and intializes the DataTimezoneInfo structures.
      def parse(file)
        magic, version, ttisgmtcnt, ttisstdcnt, leapcnt, timecnt, typecnt, charcnt =
          check_read(file, 44).unpack('a4 a x15 NNNNNN')

        if magic != 'TZif'
          raise InvalidZoneinfoFile, "The file '#{file.path}' does not start with the expected header."
        end

        if version == '2' || version == '3'
          # Skip the first 32-bit section and read the header of the second 64-bit section
          file.seek(timecnt * 5 + typecnt * 6 + charcnt + leapcnt * 8 + ttisgmtcnt + ttisstdcnt, IO::SEEK_CUR)

          prev_version = version

          magic, version, ttisgmtcnt, ttisstdcnt, leapcnt, timecnt, typecnt, charcnt =
            check_read(file, 44).unpack('a4 a x15 NNNNNN')

          unless magic == 'TZif' && (version == prev_version)
            raise InvalidZoneinfoFile, "The file '#{file.path}' contains an invalid 64-bit section header."
          end

          using_64bit = true
        elsif version != '3' && version != '2' && version != "\0"
          raise InvalidZoneinfoFile, "The file '#{file.path}' contains a version of the zoneinfo format that is not currently supported."
        else
          using_64bit = false
        end

        unless leapcnt == 0
          raise InvalidZoneinfoFile, "The zoneinfo file '#{file.path}' contains leap second data. TZInfo requires zoneinfo files that omit leap seconds."
        end

        transitions = []

        if using_64bit
          timecnt.times do |i|
            high, low = check_read(file, 8).unpack('NN'.freeze)
            transition_time = make_signed_int64(high, low)
            transitions << {:at => transition_time}
          end
        else
          timecnt.times do |i|
            transition_time = make_signed_int32(check_read(file, 4).unpack('N'.freeze)[0])
            transitions << {:at => transition_time}
          end
        end

        timecnt.times do |i|
          localtime_type = check_read(file, 1).unpack('C'.freeze)[0]
          transitions[i][:offset] = localtime_type
        end

        offsets = []

        typecnt.times do |i|
          gmtoff, isdst, abbrind = check_read(file, 6).unpack('NCC'.freeze)
          gmtoff = make_signed_int32(gmtoff)
          isdst = isdst == 1
          offset = {:utc_total_offset => gmtoff, :is_dst => isdst, :abbr_index => abbrind}

          unless isdst
            offset[:utc_offset] = gmtoff
            offset[:std_offset] = 0
          end

          offsets << offset
        end

        abbrev = check_read(file, charcnt)

        offsets.each do |o|
          abbrev_start = o[:abbr_index]
          raise InvalidZoneinfoFile, "Abbreviation index is out of range in file '#{file.path}'" unless abbrev_start < abbrev.length

          abbrev_end = abbrev.index("\0", abbrev_start)
          raise InvalidZoneinfoFile, "Missing abbreviation null terminator in file '#{file.path}'" unless abbrev_end

          o[:abbr] = abbrev[abbrev_start...abbrev_end].force_encoding(Encoding::UTF_8)
        end

        transitions.each do |t|
          if t[:offset] < 0 || t[:offset] >= offsets.length
            raise InvalidZoneinfoFile, "Invalid offset referenced by transition in file '#{file.path}'."
          end
        end

        # Derive the offsets from standard time (std_offset).
        derive_offsets(transitions, offsets)
        derive_offsets(transitions.reverse, offsets)

        # Assign anything left a standard offset of one hour
        offsets.each do |o|
          if !o[:std_offset] && o[:is_dst]
            o[:std_offset] = 3600
            o[:utc_offset] = o[:utc_total_offset] - 3600
          end
        end


        first_offset = nil

        offsets = offsets.map do |o|
          to = TimezoneOffset.new(o[:utc_offset], o[:std_offset], o[:abbr].untaint.to_sym)

          # The first non-dst offset (if there is one) is the offset observed
          # before the first transition.
          first_offset = to if !first_offset && !o[:is_dst]

          to
        end

        first_offset = offsets.first unless first_offset


        if transitions.empty?
          first_offset
        else
          previous_offset = first_offset

          transitions.map do |t|
            offset = offsets[t[:offset]]
            tt = TimezoneTransition.new(offset, previous_offset, t[:at])
            previous_offset = offset
            tt
          end
        end
      end
  end
end
