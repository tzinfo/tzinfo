require 'date'
require 'set'
require 'concurrent/map'

module TZInfo
  # AmbiguousTime is raised to indicates that a specified time in a local
  # timezone has more than one possible equivalent UTC time. This happens when
  # transitioning from daylight savings time to standard time where the clocks
  # are rolled back.
  #
  # AmbiguousTime is raised by period_for_local and local_to_utc when using an
  # ambiguous time and not specifying any means to resolve the ambiguity.
  class AmbiguousTime < StandardError
  end

  # PeriodNotFound is raised to indicate that no TimezonePeriod matching a given
  # time could be found.
  class PeriodNotFound < StandardError
  end

  # Raised by Timezone#get if the identifier given is not valid.
  class InvalidTimezoneIdentifier < StandardError
  end

  # Raised if an attempt is made to use a timezone created with
  # Timezone.new(nil).
  class UnknownTimezone < StandardError
  end

  # Timezone is the base class of all timezones. It provides a factory method,
  # 'get', to access timezones by identifier. Once a specific Timezone has been
  # retrieved, DateTimes, Times and timestamps can be converted between the UTC
  # and the local time for the zone. For example:
  #
  #   tz = TZInfo::Timezone.get('America/New_York')
  #   puts tz.utc_to_local(DateTime.new(2005,8,29,15,35,0)).to_s
  #   puts tz.local_to_utc(Time.utc(2005,8,29,11,35,0)).to_s
  #   puts tz.utc_to_local(1125315300).to_s
  #
  # Each time conversion method returns an object of the same type it was
  # passed.
  #
  # The Timezone class is thread-safe. It is safe to use class and instance
  # methods of Timezone in concurrently executing threads. Instances of Timezone
  # can be shared across thread boundaries.
  class Timezone
    include Comparable

    # Cache of loaded zones by identifier to avoid using require if a zone
    # has already been loaded.
    #
    # @!visibility private
    @@loaded_zones = nil

    # Default value of the dst parameter of the local_to_utc and
    # period_for_local methods.
    #
    # @!visibility private
    @@default_dst = nil

    # Sets the default value of the optional dst parameter of the
    # local_to_utc and period_for_local methods. Can be set to nil, true or
    # false.
    #
    # The value of default_dst defaults to nil if unset.
    def self.default_dst=(value)
      @@default_dst = value.nil? ? nil : !!value
    end

    # Gets the default value of the optional dst parameter of the
    # local_to_utc and period_for_local methods. Can be set to nil, true or
    # false.
    def self.default_dst
      @@default_dst
    end

    # Returns a timezone by its identifier (e.g. "Europe/London",
    # "America/Chicago" or "UTC").
    #
    # Raises InvalidTimezoneIdentifier if the timezone couldn't be found.
    def self.get(identifier)
      instance = @@loaded_zones[identifier]

      unless instance
        # Thread-safety: It is possible that multiple equivalent Timezone
        # instances could be created here in concurrently executing threads.
        # The consequences of this are that the data may be loaded more than
        # once (depending on the data source) and memoized calculations could
        # be discarded. The performance benefit of ensuring that only a single
        # instance is created is unlikely to be worth the overhead of only
        # allowing one Timezone to be loaded at a time.
        info = data_source.load_timezone_info(identifier)
        instance = info.create_timezone
        @@loaded_zones[instance.identifier] = instance
      end

      instance
    end

    # Returns a proxy for the Timezone with the given identifier. The proxy
    # will cause the real timezone to be loaded when an attempt is made to
    # find a period or convert a time. get_proxy will not validate the
    # identifier. If an invalid identifier is specified, no exception will be
    # raised until the proxy is used.
    def self.get_proxy(identifier)
      TimezoneProxy.new(identifier)
    end

    # If identifier is nil calls super(), otherwise calls get. An identfier
    # should always be passed in when called externally.
    def self.new(identifier = nil)
      if identifier
        get(identifier)
      else
        super()
      end
    end

    # Returns an array containing all the available Timezones.
    #
    # Returns TimezoneProxy objects to avoid the overhead of loading Timezone
    # definitions until a conversion is actually required.
    def self.all
      get_proxies(all_identifiers)
    end

    # Returns an array containing the identifiers of all the available
    # Timezones.
    def self.all_identifiers
      data_source.timezone_identifiers
    end

    # Returns an array containing all the available Timezones that are based
    # on data (are not links to other Timezones).
    #
    # Returns TimezoneProxy objects to avoid the overhead of loading Timezone
    # definitions until a conversion is actually required.
    def self.all_data_zones
      get_proxies(all_data_zone_identifiers)
    end

    # Returns an array containing the identifiers of all the available
    # Timezones that are based on data (are not links to other Timezones)..
    def self.all_data_zone_identifiers
      data_source.data_timezone_identifiers
    end

    # Returns an array containing all the available Timezones that are links
    # to other Timezones.
    #
    # Returns TimezoneProxy objects to avoid the overhead of loading Timezone
    # definitions until a conversion is actually required.
    def self.all_linked_zones
      get_proxies(all_linked_zone_identifiers)
    end

    # Returns an array containing the identifiers of all the available
    # Timezones that are links to other Timezones.
    def self.all_linked_zone_identifiers
      data_source.linked_timezone_identifiers
    end

    # Returns all the Timezones defined for all Countries. This is not the
    # complete set of Timezones as some are not country specific (e.g.
    # 'Etc/GMT').
    #
    # Returns TimezoneProxy objects to avoid the overhead of loading Timezone
    # definitions until a conversion is actually required.
    def self.all_country_zones
      Country.all_codes.inject([]) do |zones,country|
        zones += Country.get(country).zones
      end.uniq
    end

    # Returns all the zone identifiers defined for all Countries. This is not the
    # complete set of zone identifiers as some are not country specific (e.g.
    # 'Etc/GMT'). You can obtain a Timezone instance for a given identifier
    # with the get method.
    def self.all_country_zone_identifiers
      Country.all_codes.inject([]) do |zones,country|
        zones += Country.get(country).zone_identifiers
      end.uniq
    end

    # Returns all US Timezone instances. A shortcut for
    # TZInfo::Country.get('US').zones.
    #
    # Returns TimezoneProxy objects to avoid the overhead of loading Timezone
    # definitions until a conversion is actually required.
    def self.us_zones
      Country.get('US').zones
    end

    # Returns all US zone identifiers. A shortcut for
    # TZInfo::Country.get('US').zone_identifiers.
    def self.us_zone_identifiers
      Country.get('US').zone_identifiers
    end

    # The identifier of the timezone, e.g. "Europe/Paris".
    def identifier
      raise_unknown_timezone
    end

    # An alias for identifier.
    def name
      # Don't use alias, as identifier gets overridden.
      identifier
    end

    # Returns a friendlier version of the identifier.
    def to_s
      friendly_identifier
    end

    # Returns internal object state as a programmer-readable string.
    def inspect
      "#<#{self.class}: #{identifier}>"
    end

    # Returns a friendlier version of the identifier. Set skip_first_part to
    # omit the first part of the identifier (typically a region name) where
    # there is more than one part.
    #
    # For example:
    #
    #   Timezone.get('Europe/Paris').friendly_identifier(false)          #=> "Europe - Paris"
    #   Timezone.get('Europe/Paris').friendly_identifier(true)           #=> "Paris"
    #   Timezone.get('America/Indiana/Knox').friendly_identifier(false)  #=> "America - Knox, Indiana"
    #   Timezone.get('America/Indiana/Knox').friendly_identifier(true)   #=> "Knox, Indiana"
    def friendly_identifier(skip_first_part = false)
      parts = identifier.split('/')
      if parts.empty?
        # shouldn't happen
        identifier
      elsif parts.length == 1
        parts[0]
      else
        if skip_first_part
          result = String.new
        else
          result = parts[0] + ' - '
        end

        parts[1, parts.length - 1].reverse_each {|part|
          part.gsub!(/_/, ' ')

          if part.index(/[a-z]/)
            # Missing a space if a lower case followed by an upper case and the
            # name isn't McXxxx.
            part.gsub!(/([^M][a-z])([A-Z])/, '\1 \2')
            part.gsub!(/([M][a-bd-z])([A-Z])/, '\1 \2')

            # Missing an apostrophe if two consecutive upper case characters.
            part.gsub!(/([A-Z])([A-Z])/, '\1\'\2')
          end

          result << part
          result << ', '
        }

        result.slice!(result.length - 2, 2)
        result
      end
    end

    # Returns the TimezonePeriod for the given time. time can either be
    # a Time, DateTime or Timestamp.
    #
    # Unlike period_for_local and period_for_utc, period_for considers the UTC
    # offset of the given time.
    #
    # Raises ArgumentError if time is nil or a Timestamp with an unspecified
    # offset.
    def period_for(time)
      raise_unknown_timezone
    end

    # Returns the set of TimezonePeriod instances that are valid for the given
    # local time as an array. local_time can be specified using either a Time,
    # DateTime or Timestamp. The UTC offset of local_time is ignored (it is
    # treated as a time in the current timezone).
    #
    # If you just want a single period, use period_for_local instead and specify
    # how ambiguities should be resolved.
    #
    # Returns an empty array if no periods are found for the given time.
    #
    # Raises ArgumentError if local_time is nil.
    def periods_for_local(local_time)
      raise_unknown_timezone
    end

    # Returns an Array of TimezoneTransition instances representing the times
    # where the UTC offset of the timezone changes.
    #
    # Transitions are returned up to a given time (to).
    #
    # A from date and time may also be supplied using the from parameter. If
    # from is not nil, only transitions from that date and time onwards will be
    # returned.
    #
    # Comparisons with to are exclusive. Comparisons with from are inclusive.
    # If a transition falls precisely on to, it will be excluded. If a
    # transition falls on from, it will be included.
    #
    # Transitions returned are ordered by when they occur, from earliest to
    # latest.
    #
    # to and from can be specified using either a Time, DateTime, Time or
    # Timestamp.
    #
    # If from is specified and to is not greater than from, then an
    # ArgumentError exception is raised.
    #
    # ArgumentError is raised if to is nil or of either to or from are
    # Timestamps with unspecified offsets.
    def transitions_up_to(to, from = nil)
      raise_unknown_timezone
    end

    # Returns the canonical Timezone instance for this Timezone.
    #
    # The IANA Time Zone database contains two types of definition: Zones and
    # Links. Zones are defined by rules that set out when transitions occur.
    # Links are just references to fully defined Zone, creating an alias for
    # that Zone.
    #
    # Links are commonly used where a time zone has been renamed in a
    # release of the Time Zone database. For example, the Zone US/Eastern was
    # renamed as America/New_York. A US/Eastern Link was added in its place,
    # linking to (and creating an alias for) for America/New_York.
    #
    # Links are also used for time zones that are currently identical to a full
    # Zone, but that are administered seperately. For example, Europe/Vatican is
    # a Link to (and alias for) Europe/Rome.
    #
    # For a full Zone, canonical_zone returns self.
    #
    # For a Link, canonical_zone returns a Timezone instance representing the
    # full Zone that the link targets.
    #
    # TZInfo can be used with different data sources (see the documentation for
    # TZInfo::DataSource). Please note that some DataSource implementations may
    # not support distinguishing between full Zones and Links and will treat all
    # time zones as full Zones. In this case, the canonical_zone will always
    # return self.
    #
    # There are two built-in DataSource implementations. RubyDataSource (which
    # will be used if the tzinfo-data gem is available) supports Link zones.
    # ZoneinfoDataSource returns Link zones as if they were full Zones. If the
    # canonical_zone or canonical_identifier methods are required, the
    # tzinfo-data gem should be installed.
    #
    # The TZInfo::DataSource.get method can be used to check which DataSource
    # implementation is being used.
    def canonical_zone
      raise_unknown_timezone
    end

    # Returns the TimezonePeriod for the given UTC time. utc_time can either be
    # a Time, DateTime or Timestamp. The UTC offset of utc_time is ignored (it
    # is it is treated as a UTC time). Use the period_for method instead if the
    # UTC offset of the time needs to be considered.
    #
    # Raises ArgumentError if utc_time is nil.
    def period_for_utc(utc_time)
      raise ArgumentError, 'utc_time must not be nil' unless utc_time
      period_for(Timestamp.for(utc_time, offset: :ignore).utc)
    end

    # Returns the TimezonePeriod for the given local time. local can either be
    # a Time, DateTime or Timestamp. The UTC offset of local_time is ignored (it
    # is treated as a time in the current timezone). Use the period_for method
    # instead if the the UTC offset of the time needs to be considered.
    #
    # Warning: There are local times that have no equivalent UTC times (e.g.
    # in the transition from standard time to daylight savings time). There are
    # also local times that have more than one UTC equivalent (e.g. in the
    # transition from daylight savings time to standard time).
    #
    # In the first case (no equivalent UTC time), a PeriodNotFound exception
    # will be raised.
    #
    # In the second case (more than one equivalent UTC time), an AmbiguousTime
    # exception will be raised unless the optional dst parameter or block
    # handles the ambiguity.
    #
    # If the ambiguity is due to a transition from daylight savings time to
    # standard time, the dst parameter can be used to select whether the
    # daylight savings time or local time is used. For example,
    #
    #   Timezone.get('America/New_York').period_for_local(DateTime.new(2004,10,31,1,30,0))
    #
    # would raise an AmbiguousTime exception.
    #
    # Specifying dst=true would the daylight savings period from April to
    # October 2004. Specifying dst=false would return the standard period
    # from October 2004 to April 2005.
    #
    # If the dst parameter does not resolve the ambiguity, and a block is
    # specified, it is called. The block must take a single parameter - an
    # array of the periods that need to be resolved. The block can select and
    # return a single period or return nil or an empty array
    # to cause an AmbiguousTime exception to be raised.
    #
    # The default value of the dst parameter can be specified by setting
    # Timezone.default_dst. If default_dst is not set, or is set to nil, then
    # an AmbiguousTime exception will be raised in ambiguous situations unless
    # a block is given to resolve the ambiguity.
    #
    # Raises ArgumentError if local_time is nil.
    def period_for_local(local_time, dst = Timezone.default_dst)
      raise ArgumentError, 'local_time must not be nil' unless local_time
      results = periods_for_local(local_time)

      if results.empty?
        raise PeriodNotFound
      elsif results.size < 2
        results.first
      else
        # ambiguous result try to resolve

        if !dst.nil?
          matches = results.find_all {|period| period.dst? == dst}
          results = matches if !matches.empty?
        end

        if results.size < 2
          results.first
        else
          # still ambiguous, try the block

          if block_given?
            results = yield results
          end

          if results.is_a?(TimezonePeriod)
            results
          elsif results && results.size == 1
            results.first
          else
            raise AmbiguousTime, "#{local_time} is an ambiguous local time."
          end
        end
      end
    end

    # Converts a time to the local timezone. time can either be a Time, DateTime
    # or Timestamp. The result has the same type as time.
    #
    # Unlike utc_to_local, to_local considers the UTC offset of the given time.
    #
    # raises ArgumentError if time is nil or does not have a specified UTC
    # offset.
    def to_local(time)
      raise ArgumentError, 'time must not be nil' unless time

      Timestamp.for(time) do |ts|
        convert_to_local(ts, period_for(ts))
      end
    end

    # Converts a time in UTC to the local timezone. utc_time can either be
    # a Time, DateTime or Timestamp. The result has the same type as utc_time.
    # The UTC offset of utc_time is ignored (it is treated as a UTC time). Use
    # the to_local method instead if the the UTC offset of the time needs to be
    # considered.
    #
    # Raises ArgumentErrror if utc_time is nil.
    def utc_to_local(utc_time)
      raise ArgumentError, 'utc_time must not be nil' unless utc_time

      Timestamp.for(utc_time, offset: :ignore) do |ts|
        to_local(ts.utc)
      end
    end

    # Converts a time in the local timezone to UTC. local_time can either be
    # a Time, DateTime or Timestamp. The result has the same type as local_time.
    # Any timezone information in local_time is ignored (it is treated as a time
    # in the current timezone).
    #
    # Warning: There are local times that have no equivalent UTC times (e.g.
    # in the transition from standard time to daylight savings time). There are
    # also local times that have more than one UTC equivalent (e.g. in the
    # transition from daylight savings time to standard time).
    #
    # In the first case (no equivalent UTC time), a PeriodNotFound exception
    # will be raised.
    #
    # In the second case (more than one equivalent UTC time), an AmbiguousTime
    # exception will be raised unless the optional dst parameter or block
    # handles the ambiguity.
    #
    # If the ambiguity is due to a transition from daylight savings time to
    # standard time, the dst parameter can be used to select whether the
    # daylight savings time or local time is used. For example,
    #
    #   Timezone.get('America/New_York').local_to_utc(DateTime.new(2004,10,31,1,30,0))
    #
    # would raise an AmbiguousTime exception.
    #
    # Specifying dst=true would return 2004-10-31 5:30:00. Specifying dst=false
    # would return 2004-10-31 6:30:00.
    #
    # If the dst parameter does not resolve the ambiguity, and a block is
    # specified, it is called. The block must take a single parameter - an
    # array of the periods that need to be resolved. The block can return a
    # single period to use to convert the time or return nil or an empty array
    # to cause an AmbiguousTime exception to be raised.
    #
    # The default value of the dst parameter can be specified by setting
    # Timezone.default_dst. If default_dst is not set, or is set to nil, then
    # an AmbiguousTime exception will be raised in ambiguous situations unless
    # a block is given to resolve the ambiguity.
    #
    # Raises ArgumentError if local_time is nil.
    def local_to_utc(local_time, dst = Timezone.default_dst)
      raise ArgumentError, 'local_time must not be nil' unless local_time

      Timestamp.for(local_time, offset: :ignore) do |ts|
        period = if block_given?
          period_for_local(ts, dst) {|periods| yield periods }
        else
          period_for_local(ts, dst)
        end

        (ts - period.utc_total_offset).utc
      end
    end

    # Returns information about offsets used by the Timezone up to a given
    # time (to). The information is returned as an Array of TimezoneOffset
    # instances.
    #
    # A from time may also be supplied using the from parameter. If from is not
    # nil, only offsets used from that time forward will be returned.
    #
    # Comparisons with to are exclusive. Comparisons with from are inclusive.
    #
    # Offsets may be returned in any order.
    #
    # to and from can be specified as Time, DateTime or Timestamp instances.
    #
    # If from is specified and to is not greater than from, then
    # offsets_up_to raises an ArgumentError exception.
    #
    # ArgumentError is raised if to is nil or of either to or from are
    # Timestamps with unspecified offsets.
    def offsets_up_to(to, from = nil)
      raise ArgumentError, 'to must not be nil' unless to

      to_timestamp = Timestamp.for(to)
      from_timestamp = from && Timestamp.for(from)
      transitions = transitions_up_to(to_timestamp, from_timestamp)

      if transitions.empty?
        # No transitions in the range, find the period that covers it.

        if from_timestamp
          # Use the from date as it is inclusive.
          period = period_for(from_timestamp)
        else
          # to is exclusive, so this can't be used with period_for. However, any
          # time earlier than to can be used. Subtract 1 hour.
          period = period_for(to_timestamp - 3600)
        end

        [period.offset]
      else
        result = Set.new

        first = transitions.first
        result << first.previous_offset unless from_timestamp && first.at == from_timestamp

        transitions.each do |t|
          result << t.offset
        end

        result.to_a
      end
    end

    # Returns the canonical identifier for this Timezone.
    #
    # This is a shortcut for calling canonical_zone.identifier. Please refer
    # to the canonical_zone documentation for further information.
    def canonical_identifier
      canonical_zone.identifier
    end

    # Returns the current time in the timezone as a Time.
    def now
      to_local(Time.now)
    end

    # Returns the TimezonePeriod for the current time.
    def current_period
      period_for(Time.now)
    end

    # Returns the current Time and TimezonePeriod as an array. The first element
    # is the time, the second element is the period.
    def current_period_and_time
      ts = Timestamp.for(Time.now)
      period = period_for(ts)
      local_time = convert_to_local(ts, period).to_time
      [local_time, period]
    end

    alias :current_time_and_period :current_period_and_time

    # Converts a time to local and returns a string representation of the local
    # time according to the given format.
    #
    # Calls either Time.strftime or DateTime.strftime after expanding %Z and %z
    # to the timezone abbreviation (for example, EST or EDT) and offset for the
    # specified time in the current Timezone.
    #
    # The offset can be formatted as follows:
    #
    # - %z - hour and minute (e.g. +0500) - %:z - hour and minute separated with
    # a colon (e.g. +05:00) - %::z - hour minute and second separated with
    # colons (e.g. +05:00:00) - %:::z - hour only (e.g. +05)
    #
    # time can be specified as either a Time, DateTime or Timestamp. If time is
    # either a Time or Timestamp, then the Time#strftime method is called. If
    # time is a DateTime, then DateTime#strftime is used.
    #
    # Raises ArgumentError if format or time are nil or if time is a Timestamp
    # with an unspecified UTC offset.
    def strftime(format, time = Time.now.utc)
      raise ArgumentError, 'format must not be nil' unless format
      raise ArgumentError, 'time must not be nil' unless time

      period = nil
      local_time = Timestamp.for(time) do |ts|
        period = period_for(ts)
        convert_to_local(ts, period)
      end

      local_time = local_time.to_time if local_time.kind_of?(Timestamp)

      abbreviation = period.abbreviation.to_s.gsub(/%/, '%%')

      format = format.gsub(/%(%*)(Z|:{0,3}z)/) do
        if $1.length.odd?
          # return %%Z so the real strftime treats it as a literal %Z too
          "#$1%#$2"
        elsif $2 == "Z"
          "#$1#{abbreviation}"
        else
          m, s = period.utc_total_offset.divmod(60)
          h, m = m.divmod(60)
          case $2.length
          when 1
            "#$1#{'%+03d%02d' % [h,m]}"
          when 2
            "#$1#{'%+03d:%02d' % [h,m]}"
          when 3
            "#$1#{'%+03d:%02d:%02d' % [h,m,s]}"
          else # 4
            "#$1#{'%+03d' % [h]}"
          end
        end
      end

      local_time.strftime(format)
    end

    # Compares two Timezones based on their identifier. Returns -1 if tz is less
    # than self, 0 if tz is equal to self and +1 if tz is greater than self.
    #
    # Returns nil if tz is not comparable with Timezone instances.
    def <=>(tz)
      return nil unless tz.is_a?(Timezone)
      identifier <=> tz.identifier
    end

    # Returns true if and only if the identifier of tz is equal to the
    # identifier of this Timezone.
    def eql?(tz)
      self == tz
    end

    # Returns a hash of this Timezone.
    def hash
      identifier.hash
    end

    # Dumps this Timezone for marshalling.
    def _dump(limit)
      identifier
    end

    # Loads a marshalled Timezone.
    def self._load(data)
      Timezone.get(data)
    end

    private
      # Initializes @@loaded_zones.
      def self.init_loaded_zones
        @@loaded_zones = Concurrent::Map.new
      end
      init_loaded_zones

      # Returns an array of proxies corresponding to the given array of
      # identifiers.
      def self.get_proxies(identifiers)
        identifiers.collect {|identifier| get_proxy(identifier)}
      end

      # Returns the current DataSource.
      def self.data_source
        DataSource.get
      end

      # Raises an UnknownTimezone exception.
      def raise_unknown_timezone
        raise UnknownTimezone, 'TZInfo::Timezone constructed directly'
      end

      # Converts a Timestamp to local by applying the utc_total_offset of the
      # given period.
      def convert_to_local(timestamp, period)
        timestamp.apply_offset(period.utc_total_offset)
      end

  end
end
