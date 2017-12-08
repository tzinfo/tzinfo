# frozen_string_literal: true

module TZInfo
  # A time represented as an Integer number of seconds since 1970-01-01 00:00:00
  # UTC (ignoring leap seconds), the fraction through the second (sub_second as
  # a Rational) and an optional UTC offset. Like Ruby's Time class, Timestamp
  # can distinguish between a local time with a zero offset and a time specified
  # explicitly as UTC.
  class Timestamp
    include Comparable

    # The Unix epoch (1970-01-01 00:00:00 UTC) as a chronological Julian day
    # number.
    JD_EPOCH = 2440588
    private_constant :JD_EPOCH

    # The number of seconds since 1970-01-01 00:00:00 UTC ignoring leap seconds
    # (i.e. each day is treated as if it were 86,400 seconds long).
    attr_reader :value

    # The fraction of a second elapsed since timestamp as a Rational or the
    # Integer 0. Always >= 0 and < 1.
    attr_reader :sub_second

    # Constructs a new Timestamp with a Integer timestamp value (seconds since
    # 1970-01-01 00:00:00 UTC ignoring leap seconds), sub_second (a Rational >=
    # 0 and < 1, or the Integer 0) and an optional offset from UTC (either an
    # Integer number of seconds or the symbol :utc).
    def initialize(value, sub_second = 0, utc_offset = nil)
      raise ArgumentError, 'value must be an Integer' unless value.kind_of?(Integer)
      raise ArgumentError, 'sub_second must be a Rational or the Integer 0' unless (sub_second.kind_of?(Integer) && sub_second == 0) || sub_second.kind_of?(Rational)
      raise RangeError, 'sub_second must be >= 0 and < 1' if sub_second < 0 || sub_second >= 1
      raise ArgumentError, 'utc_offset must be an Integer, :utc or nil' if utc_offset && utc_offset != :utc && !utc_offset.kind_of?(Integer)

      @value = value

      # Convert Rational(0,1) to 0.
      @sub_second = sub_second == 0 ? 0 : sub_second

      @utc_offset = utc_offset
    end

    # The offset from UTC in seconds or nil if the Timestamp doesn't have a
    # specified offset.
    def utc_offset
      @utc_offset == :utc ? 0 : @utc_offset
    end

    # Returns true if this Timestamp represents UTC, false if the Timestamp
    # wasn't specified as UTC or nil if the Timestamp has no specified offset.
    def utc?
      return nil unless @utc_offset
      @utc_offset == :utc
    end

    # Adds an integer number of seconds to the Timestamp value and returns the
    # result as a new Timestamp instance that has the same utc_offset.
    def +(seconds)
      raise ArgumentError, 'seconds must be an Integer' unless seconds.kind_of?(Integer)
      Timestamp.new(@value + seconds, @sub_second, @utc_offset)
    end

    # Subtracts an integer number of seconds from the Timestamp value and
    # returns the result as a new Timestamp instance that has the same
    # utc_offset.
    def -(seconds)
      raise ArgumentError, 'seconds must be an Integer' unless seconds.kind_of?(Integer)
      self + (-seconds)
    end

    # Returns a UTC Timestamp equivalent to this instance. self is returned if
    # self.utc? is true.
    def utc
      return self if @utc_offset == :utc
      Timestamp.utc(@value, @sub_second)
    end

    # Returns a Time representation of this Timestamp. If utc_offset is not
    # specified (nil), a UTC Time will be returned.
    def to_time
      time = new_time

      if @utc_offset && @utc_offset != :utc
        time.localtime(@utc_offset)
      else
        time.utc
      end
    end

    # Returns a DateTime representation of this Timestamp. If utc_offset is not
    # specified (nil), a UTC DateTime will be returned.
    def to_datetime
      new_datetime
    end

    # Returns an Integer representation of this Timestamp (the number of
    # seconds since 1970-01-01 00:00:00 UTC ignoring leap seconds).
    def to_i
      value
    end

    # Formats the Timestamp according to the directives in the given format
    # string. Please refer to Time#strftime for a list of supported
    # format directives.
    #
    # Raises ArgumentError if format is nil.
    def strftime(format)
      raise ArgumentError, 'format must be specified' unless format
      to_time.strftime(format)
    end

    # Returns a String representation of this Timestamp.
    def to_s
      return value_and_sub_second_to_s unless @utc_offset
      return "#{value_and_sub_second_to_s} UTC" if @utc_offset == :utc

      sign = @utc_offset >= 0 ? '+' : '-'
      min, sec = @utc_offset.abs.divmod(60)
      hour, min = min.divmod(60)

      "#{value_and_sub_second_to_s(@utc_offset)} #{sign}#{'%02d' % hour}:#{'%02d' % min}#{sec > 0 ? ':%02d' % sec : nil}#{@utc_offset != 0 ? " (#{value_and_sub_second_to_s} UTC)" : nil}"
    end

    # Compares this Timestamp with another. Returns -1, 0 or 1 depending if this
    # instance is earlier, equal or later than value respectively.
    #
    # Timestamps without a defined utc_offset are not comparable with Timestamps
    # that have a utc_offset (<=> returns nil in such cases).
    def <=>(t)
      return nil unless t.kind_of?(Timestamp)
      return nil if utc_offset && !t.utc_offset
      return nil if !utc_offset && t.utc_offset

      result = value <=> t.value
      result = sub_second <=> t.sub_second if result == 0
      result
    end

    alias eql? ==

    # Returns a hash of this Timestamp.
    def hash
      [@value, @sub_second, !!@utc_offset].hash
    end

    # When used without a block, returns a Timestamp representation of a given
    # Time, DateTime or Timestamp.
    #
    # When called with a block, the Timestamp representation of the value is
    # passed to the block. The block must then return a Timestamp, which will
    # be converted back to the type of the initial value. If the initial value
    # was a Timestamp, the block result will just be returned.
    #
    # The UTC offset can either be preserved or ignored by setting the :offset
    # option to :preserve, or :ignore. If :offset isn't specified, the offset of
    # the value is preserved.
    def self.for(value, options = {})
      offset = options[:offset] || :preserve
      raise ArgumentError, ':offset must be :ignore or :preserve' unless offset == :preserve || offset == :ignore
      raise ArgumentError, 'value must be specified' unless value

      ignore_offset = offset == :ignore

      timestamp = case value
        when Time
          for_time(value, ignore_offset)
        when DateTime
          for_date_time(value, ignore_offset)
        when Timestamp
          for_timestamp(value, ignore_offset)
        else
          raise ArgumentError, "#{value.class} values are not supported"
      end

      if block_given?
        result = yield timestamp
        raise ArgumentError, 'block must return a Timestamp' unless result.kind_of?(Timestamp)

        case value
          when Time
            result.to_time
          when DateTime
            result.to_datetime
          else # Timestamp
            result
        end
      else
        timestamp
      end
    end

    # Constructs a new UTC Timestamp with a Integer timestamp value (seconds
    # since 1970-01-01 00:00:00 UTC) and sub_second (a Rational >= 0 and < 1, or
    # the Integer 0).
    def self.utc(value, sub_second = 0)
      new(value, sub_second, :utc)
    end

    protected

    # Constructs a new instance of a Time or Time-like class matching the value
    # and sub_second of this Timestamp, but not setting the offset.
    def new_time(klass = Time)
      klass.at(@value, @sub_second * 1_000_000)
    end

    # Constructs a new instance of a DateTime or DateTime-like class with the
    # same value, sub_second and utc_offset as this Timestamp.
    def new_datetime(klass = DateTime)
      date_time = klass.jd(JD_EPOCH + ((@value.to_r + @sub_second) / 86400))
      @utc_offset && @utc_offset != 0 && @utc_offset != :utc ? date_time.new_offset(Rational(@utc_offset, 86400)) : date_time
    end

    private

    # Converts the value and nanoseconds to a String, adding on the given
    # offset.
    def value_and_sub_second_to_s(offset = 0)
      "#{@value + offset}#{sub_second_to_s}"
    end

    # Converts the sub_second value to a String suitable for appending to the
    # String representation of a Timestamp .
    def sub_second_to_s
      if @sub_second == 0
        ''
      else
        " #{@sub_second.numerator}/#{@sub_second.denominator}"
      end
    end

    # Constructs a Timestamp for a given Time, optionally ignoring the offset.
    def self.for_time(time, ignore_offset)
      value = time.to_i
      sub_second = time.subsec

      if ignore_offset
        utc_offset = nil
        value += time.utc_offset
      elsif time.utc?
        utc_offset = :utc
      else
        utc_offset = time.utc_offset
      end

      new(value, sub_second, utc_offset)
    end

    # Constructs a Timestamp for a given DateTime, optionally ignoring the
    # offset.
    def self.for_date_time(date_time, ignore_offset)
      value = (date_time.jd - JD_EPOCH) * 86400 + date_time.sec + date_time.min * 60 + date_time.hour * 3600
      sub_second = date_time.sec_fraction

      if ignore_offset
        utc_offset = nil
      else
        utc_offset = (date_time.offset * 86400).to_i
        value -= utc_offset
      end

      new(value, sub_second, utc_offset)
    end

    # Returns a Timestamp for another Timestamp, optionally ignoring the
    # offset. If the result would have the same value, the same instance is
    # returned. If the passed in value is an instance of a subclass of
    # Timestamp, then a new Timestamp will always be returned.
    def self.for_timestamp(timestamp, ignore_offset)
      if ignore_offset && timestamp.utc_offset
        new(timestamp.value + timestamp.utc_offset, timestamp.sub_second)
      elsif timestamp.class != Timestamp
        new(timestamp.value, timestamp.sub_second, timestamp.utc? ? :utc : timestamp.utc_offset)
      else
        timestamp
      end
    end
  end
end
