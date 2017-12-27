# frozen_string_literal: true

require 'set'

module TZInfo
  # {AmbiguousTime} is raised to indicate that a specified local time has more
  # than one possible equivalent UTC time. This happens when transitioning from
  # daylight savings time to standard time where the clocks are rolled back.
  #
  # {AmbiguousTime} is raised by {Timezone#period_for_local} and
  # {Timezone#local_to_utc} when using an ambiguous time and not specifying any
  # means to resolve the ambiguity.
  class AmbiguousTime < StandardError
  end

  # {PeriodNotFound} is raised to indicate that no {TimezonePeriod} matching a
  # given time could be found.
  class PeriodNotFound < StandardError
  end

  # {InvalidTimezoneIdentifier} is raised by {Timezone.get} if the identifier
  # given is not valid.
  class InvalidTimezoneIdentifier < StandardError
  end

  # {UnknownTimezone} is raised when calling methods on an instance of
  # {Timezone} that was created directly. To obtain {Timezone} instances the
  # {Timezone.get} method should be used instead.
  class UnknownTimezone < StandardError
  end

  # The {Timezone} class represents a time zone. It provides a factory method,
  # {get}, to retrieve {Timezone} instances by their identifier.
  #
  # The {Timezone#to_local} method can be used to convert `Time` and `DateTime`
  # instances to the local time for the zone. For example:
  #
  #     tz = TZInfo::Timezone.get('America/New_York')
  #     local_time = tz.to_local(Time.utc(2005,8,29,15,35,0))
  #     local_datetime = tz.to_local(DateTime.new(2005,8,29,15,35,0))
  #
  # Local `Time` and `DateTime` instances returned by `Timezone` have the
  # correct local offset.
  #
  # The {Timezone#local_to_utc} method can by used to convert local `Time` and
  # `DateTime` instances to UTC. {Timezone#local_to_utc} ignores the UTC offset
  # of the supplied value and treats if it is a local time for the zone. For
  # example:
  #
  #     tz = TZInfo::Timezone.get('America/New_York')
  #     utc_time = tz.local_to_utc(Time.new(2005,8,29,11,35,0))
  #     utc_datetime = tz.local_to_utc(DateTime.new(2005,8,29,11,35,0))
  #
  # Each time zone is treated as sequence of periods of time ({TimezonePeriod})
  # that observe the same offset ({TimezoneOffset}). Transitions
  # ({TimezoneTransition}) denote the end of one period and the start of the
  # next. The {Timezone} class has methods that allow the periods, offsets and
  # transitions of a time zone to be interrogated.
  #
  # The {Timezone} class is thread-safe. It is safe to use class and instance
  # methods of {Timezone} in concurrently executing threads. Instances of
  # {Timezone} can be shared across thread boundaries.
  #
  # @abstract The {get} method returns an instance of either {DataTimezone} or
  #   {LinkedTimezone}. The {get_proxy} method and other methods returning
  #   collections of time zones return instances of {TimezoneProxy}.
  class Timezone
    include Comparable

    # The default value of the dst parameter of the {local_to_utc} and
    # {period_for_local} methods.
    #
    # @!visibility private
    @@default_dst = nil

    # Sets the default value of the optional `dst` parameter of the
    # {local_to_utc} and {period_for_local} methods. Can be set to `nil`, `true`
    # or `false`.
    #
    # @param value [Boolean] `nil`, `true` or `false`.
    def self.default_dst=(value)
      @@default_dst = value.nil? ? nil : !!value
    end

    # Returns the default value of the optional `dst` parameter of the
    # {local_to_utc} and {period_for_local} methods (`nil`, `true` or `false`).
    #
    # {default_dst} defaults to `nil` unless changed with {default_dst=}.
    #
    # @return [Boolean] the default value of the optional dst parameter of the
    #   {local_to_utc} and {period_for_local} methods (`nil`, `true` or
    #   `false`).
    def self.default_dst
      @@default_dst
    end

    # Returns a time zone by its IANA Time Zone Database identifier (e.g.
    # `"Europe/London"` or `"America/Chicago"`). Call {all_identifiers} for a
    # list of all the valid identifiers.
    #
    # The {get} method will return a subclass of {Timezone}, either a
    # {DataTimezone} (for a time zone defined by rules that set out when
    # transitions occur) or a {LinkedTimezone} (for a time zone that is just a
    # link to or alias for a another time zone).
    #
    # @param identifier [String] an IANA Time Zone Database time zone
    #   identifier.
    # @return [Timezone] the {Timezone} with the given `identifier`.
    # @raise [InvalidTimezoneIdentifier] if the `identifier` is not valid.
    def self.get(identifier)
      data_source.get_timezone_info(identifier).create_timezone
    end

    # Returns a proxy for the time zone with the given identifier. This allows
    # loading of the time zone data to be deferred until it is first needed.
    #
    # The identifier will not be validated. If an invalid identifier is
    # specified, no exception will be raised until the proxy is used.
    #
    # @param identifier [String] an IANA Time Zone Database time zone
    #   identifier.
    # @return [TimezoneProxy] a proxy for the time zone with the given
    #   `identifier`.
    def self.get_proxy(identifier)
      TimezoneProxy.new(identifier)
    end

    # Returns an `Array` of all the available time zones.
    #
    # {TimezoneProxy} instances are returned to avoid the overhead of loading
    # time zone data until it is first needed.
    #
    # @return [Array<Timezone>] all available time zones.
    def self.all
      get_proxies(all_identifiers)
    end

    # @return [Array<String>] an `Array` containing the identifiers of all the
    #   available time zones.
    def self.all_identifiers
      data_source.timezone_identifiers
    end

    # Returns an `Array` of all the available time zones that are
    # defined by offsets and transitions.
    #
    # {TimezoneProxy} instances are returned to avoid the overhead of loading
    # time zone data until it is first needed.
    #
    # @return [Array<Timezone>] an `Array` of all the available time zones that
    #   are defined by offsets and transitions.
    def self.all_data_zones
      get_proxies(all_data_zone_identifiers)
    end

    # @return [Array<String>] an `Array` of the identifiers of all available
    # time zones that are defined by offsets and transitions.
    def self.all_data_zone_identifiers
      data_source.data_timezone_identifiers
    end

    # Returns an `Array` of all the available time zones that are
    # defined as links to / aliases for other time zones.
    #
    # {TimezoneProxy} instances are returned to avoid the overhead of loading
    # time zone data until it is first needed.
    #
    # @return [Array<Timezone>] an `Array` of all the available time zones that
    #   are defined as links to / aliases for other time zones.
    def self.all_linked_zones
      get_proxies(all_linked_zone_identifiers)
    end

    # @return [Array<String>] an `Array` of the identifiers of all available
    # time zones that are defined as links to / aliases for other time zones.
    def self.all_linked_zone_identifiers
      data_source.linked_timezone_identifiers
    end

    # Returns an `Array` of all the time zones that are observed by at least
    # one {Country}. This is not the complete set of time zones as some are not
    # country specific (e.g. `'Etc/GMT'`).
    #
    # {TimezoneProxy} instances are returned to avoid the overhead of loading
    # time zone data until it is first needed.
    #
    # @return [Array<Timezone>] an `Array` of all the time zones that are
    #   observed by at least one {Country}.
    def self.all_country_zones
      Country.all_codes.inject([]) do |zones,country|
        zones += Country.get(country).zones
      end.uniq
    end

    # Returns an `Array` of the idenifiers of all the time zones that are
    # observed by at least one {Country}. This is not the complete set of time
    # zone identifiers as some are not country specific (e.g. `'Etc/GMT'`).
    #
    # {TimezoneProxy} instances are returned to avoid the overhead of loading
    # time zone data until it is first needed.
    #
    # @return [Array<String>] an `Array` of the idenifiers of all the time
    # zones that are observed by at least one {Country}.
    def self.all_country_zone_identifiers
      Country.all_codes.inject([]) do |zones,country|
        zones += Country.get(country).zone_identifiers
      end.uniq
    end

    # @return [String] the identifier of the time zone, for example,
    #   `"Europe/Paris"`.
    def identifier
      raise_unknown_timezone
    end

    # @return [String] the identifier of the time zone, for example,
    #   `"Europe/Paris"`.
    def name
      # Don't use alias, as identifier gets overridden.
      identifier
    end

    # @return [String] {identifier}, modified to make it more readable.
    def to_s
      friendly_identifier
    end

    # @return [String] the internal object state as a programmer-readable
    #   `String`.
    def inspect
      "#<#{self.class}: #{identifier}>"
    end

    # Returns {identifier}, modified to make it more readable. Set `skip_first_part` to
    # omit the first part of the identifier (typically a region name) where
    # there is more than one part.
    #
    # For example:
    #
    #     TZInfo::Timezone.get('Europe/Paris').friendly_identifier(false)         #=> "Europe - Paris"
    #     TZInfo::Timezone.get('Europe/Paris').friendly_identifier(true)          #=> "Paris"
    #     TZInfo::Timezone.get('America/Indiana/Knox').friendly_identifier(false) #=> "America - Knox, Indiana"
    #     TZInfo::Timezone.get('America/Indiana/Knox').friendly_identifier(true)  #=> "Knox, Indiana"
    #
    # @param skip_first_part [Boolean] whether the first part of the identifier
    #   (typically a region name) should be omitted.
    # @return [String] the modified identifier.
    def friendly_identifier(skip_first_part = false)
      parts = identifier.split('/')
      if parts.empty?
        # shouldn't happen
        identifier
      elsif parts.length == 1
        parts[0]
      else
        prefix = skip_first_part ? nil : "#{parts[0]} - "

        parts = parts.drop(1).map do |part|
          part.gsub!(/_/, ' ')

          if part.index(/[a-z]/)
            # Missing a space if a lower case followed by an upper case and the
            # name isn't McXxxx.
            part.gsub!(/([^M][a-z])([A-Z])/, '\1 \2')
            part.gsub!(/([M][a-bd-z])([A-Z])/, '\1 \2')

            # Missing an apostrophe if two consecutive upper case characters.
            part.gsub!(/([A-Z])([A-Z])/, '\1\'\2')
          end

          part
        end

        "#{prefix}#{parts.reverse.join(', ')}"
      end
    end

    # Returns the {TimezonePeriod} that is valid at a given time.
    #
    # Unlike {period_for_local} and {period_for_utc}, the UTC offset of the
    # `time` parameter is taken into consideration.
    #
    # @param time [Object] a `Time`, `DateTime` or {Timestamp}.
    # @return [TimezonePeriod] the {TimezonePeriod} that is valid at `time`.
    # @raise [ArgumentError] if `time` is `nil`.
    # @raise [ArgumentError] if `time` is a {Timestamp} with an unspecified
    #   offset.
    def period_for(time)
      raise_unknown_timezone
    end

    # Returns the set of {TimezonePeriod}s that are valid for the given
    # local time as an `Array`.
    #
    # The UTC offset of the `local_time` parameter is ignored (it is treated as
    # a time in the time zone represented by `self`).
    #
    # This will typically return an `Array` containing a single
    # {TimezonePeriod}. More than one {TimezonePeriod} will be returned when the
    # local time is ambiguous (for example, when daylight savings time ends). An
    # empty `Array` will be returned when the local time is not valid (for
    # example, when daylight savings time begins).
    #
    # To obtain just a single {TimezonePeriod} in all cases, use
    # {period_for_local} instead and specify how ambiguities should be resolved.
    #
    # @param local_time [Object] a `Time`, `DateTime` or {Timestamp}.
    # @return [Array<TimezonePeriod>] the set of {TimezonePeriod}s that are
    #   valid at `local_time`.
    # @raise [ArgumentError] if `local_time` is `nil`.
    def periods_for_local(local_time)
      raise_unknown_timezone
    end

    # Returns an `Array` of {TimezoneTransition} instances representing the
    # times where the UTC offset of the timezone changes.
    #
    # Transitions are returned up to a given time (`to`).
    #
    # A from time may also be supplied using the `from` parameter. If from is
    # not `nil`, only transitions from that time onwards will be returned.
    #
    # Comparisons with `to` are exclusive. Comparisons with `from` are
    # inclusive. If a transition falls precisely on `to`, it will be excluded.
    # If a transition falls on `from`, it will be included.
    #
    # @param to [Object] a `Time`, `DateTime` or {Timestamp} specifying the
    #   latest (exclusive) transition to return.
    # @param from [Object] an optional `Time`, `DateTime` or {Timestamp}
    #   specifying the earliest (inclusive) transition to return.
    # @return [Array<TimezoneTransition>] the transitions that are earlier than
    #   `to` and, if specified, at or later than `from`. Transitions are ordered
    #   by when they occur, from earliest to latest.
    # @raise [ArgumentError] if `from` is specified and `to` is not greater than
    #   `from`.
    # @raise [ArgumentError] is raised if `to` is `nil`.
    # @raise [ArgumentError] if either `to` or `from` is a {Timestamp} with an
    #   unspecified offset.
    def transitions_up_to(to, from = nil)
      raise_unknown_timezone
    end

    # Returns the canonical {Timezone} instance for this {Timezone}.
    #
    # The IANA Time Zone database contains two types of definition: Zones and
    # Links. Zones are defined by rules that set out when transitions occur.
    # Links are just references to fully defined Zone, creating an alias for
    # that Zone.
    #
    # Links are commonly used where a time zone has been renamed in a release of
    # the Time Zone database. For example, the US/Eastern Zone was renamed as
    # America/New_York. A US/Eastern Link was added in its place, linking to
    # (and creating an alias for) America/New_York.
    #
    # Links are also used for time zones that are currently identical to a full
    # Zone, but that are administered seperately. For example, Europe/Vatican is
    # a Link to (and alias for) Europe/Rome.
    #
    # For a full Zone (implemented by {DataTimezone}), {canonical_zone} returns
    # self.
    #
    # For a Link (implemented by {LinkedTimezone}), {canonical_zone} returns a
    # {Timezone} instance representing the full Zone that the link targets.
    #
    # TZInfo can be used with different data sources (see the documentation for
    # {TZInfo::DataSource}). Some DataSource implementations may not support
    # distinguishing between full Zones and Links and will treat all time zones
    # as full Zones. In this case, {canonical_zone} will always return `self`.
    #
    # There are two built-in DataSource implementations.
    # {DataSources::RubyDataSource} (which will be used if the tzinfo-data gem
    # is available) supports Link zones. {DataSources::ZoneinfoDataSource}
    # returns Link zones as if they were full Zones. If the {canonical_zone} or
    # {canonical_identifier} methods are needed, the tzinfo-data gem should be
    # installed.
    #
    # The {TZInfo::DataSource.get} method can be used to check which DataSource
    # implementation is being used.
    #
    # @return [Timezone] the canonical {Timezone} instance for this {Timezone}.
    def canonical_zone
      raise_unknown_timezone
    end

    # Returns the {TimezonePeriod} that is valid at a given time.
    #
    # The UTC offset of the `utc_time` parameter is ignored (it is treated as a
    # UTC time). Use the {period_for} method instead if the UTC offset of the
    # time needs to be taken into consideration.
    #
    # @param utc_time [Object] a `Time`, `DateTime` or {Timestamp}.
    # @return [TimezonePeriod] the {TimezonePeriod} that is valid at `utc_time`.
    # @raise [ArgumentError] if `utc_time` is `nil`.
    def period_for_utc(utc_time)
      raise ArgumentError, 'utc_time must be specified' unless utc_time
      period_for(Timestamp.for(utc_time, offset: :ignore).utc)
    end

    # Returns the {TimezonePeriod} that is valid at the given local time.
    #
    # The UTC offset of the `local_time` parameter is ignored (it is treated as
    # a time in the time zone represented by `self`). Use the {period_for}
    # method instead if the the UTC offset of the time needs to be taken into
    # consideration.
    #
    # _Warning:_ There are local times that have no equivalent UTC times (for
    # example, during the transition from standard time to daylight savings
    # time). There are also local times that have more than one UTC equivalent
    # (for example in the transition from daylight savings time to standard
    # time).
    #
    # In the first case (no equivalent UTC time), a {PeriodNotFound} exception
    # will be raised.
    #
    # In the second case (more than one equivalent UTC time), an {AmbiguousTime}
    # exception will be raised unless the optional `dst` parameter or block
    # handles the ambiguity.
    #
    # If the ambiguity is due to a transition from daylight savings time to
    # standard time, the `dst` parameter can be used to select whether the
    # daylight savings time or local time is used. For example, the following
    # code would raise an {AmbiguousTime} exception:
    #
    #     tz = TZInfo::Timezone.get('America/New_York')
    #     tz.period_for_local(Time.new(2004,10,31,1,30,0))
    #
    # Specifying `dst = true` would select the daylight savings period from
    # April to October 2004. Specifying `dst = false` would return the
    # standardtime period from October 2004 to April 2005.
    #
    # The `dst` parameter will not be able to resolve an ambiguity resulting
    # from the clocks being set back without changing from daylight savings time
    # to standard time. In this case, if a block is specified, it will be called
    # to resolve the ambiguity. The block must take a single parameter - an
    # `Array` of {TimezonePeriod}s that need to be resolved. The block can
    # select and return a single {TimezonePeriod} or return `nil` or an empty
    # `Array` to cause an {AmbiguousTime} exception to be raised.
    #
    # The default value of the `dst` parameter can be specified using
    # {Timezone.default_dst=}.
    #
    # @param local_time [Object] a `Time`, `DateTime` or {Timestamp}.
    # @param dst [Boolean] whether to resolve ambiguous local times by always
    #   selecting the period observing daylight savings time (`true`), always
    #   selecting the period observing standard time (`false`), or leaving the
    #   ambiguity unresolved (`nil`).
    # @yield [periods] if the `dst` parameter did not resolve an ambiguity, an
    #   optional block is yielded to.
    # @yieldparam periods [Array<TimezonePeriod>] an `Array` containing all
    #   the {TimezonePeriod}s that still match `local_time` after applying the
    #   `dst` parameter.
    # @yieldreturn [Object] to resolve the ambiguity: a chosen {TimezonePeriod}
    #   or an `Array` containing a chosen {TimezonePeriod}; to leave the
    #   ambiguity unresolved: an empty `Array`, an `Array` containing more than
    #   one {TimezonePeriod}, or `nil`.
    # @return [TimezonePeriod] the {TimezonePeriod} that is valid at
    #   `local_time`.
    # @raise [ArgumentError] if `local_time` is `nil`.
    # @raise [PeriodNotFound] if `local_time` is not valid for the time zone
    #   (there is no equivalent UTC time).
    # @raise [AmbiuousTime] if `local_time` was ambiguous for the time zone and
    #   the `dst` parameter or block did not resolve the ambiguity.
    def period_for_local(local_time, dst = Timezone.default_dst)
      raise ArgumentError, 'local_time must be specified' unless local_time
      results = periods_for_local(local_time)

      if results.empty?
        raise PeriodNotFound, "#{local_time.strftime('%Y-%m-%d %H:%M:%S')} is an invalid local time."
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
            raise AmbiguousTime, "#{local_time.strftime('%Y-%m-%d %H:%M:%S')} is an ambiguous local time."
          end
        end
      end
    end

    # Converts a time to the local time for the time zone.
    #
    # The result will be of type {LocalTime} (if passed a `Time`),
    # {LocalDateTime} (if passed a `DateTime`) or {LocalTimestamp} (if passed a
    # {Timestamp}). {LocalTime}, {LocalDateTime} and {LocalTimestamp} are
    # subclasses of `Time`, `DateTime` and {Timestamp} that provide additional
    # information about the local result.
    #
    # Unlike {utc_to_local}, {to_local} takes the UTC offset of the given time
    # into consideration.
    #
    # @param time [Object] a `Time`, `DateTime` or {Timestamp}.
    # @return [Object] the local equivalent of `time` as a {LocalTime},
    #   {LocalDateTime} or {LocalTimestamp}.
    # @raise [ArgumentError] if `time` is `nil`.
    # @raise [ArgumentError] if `time` is a {Timestamp} that does not have a
    #   specified UTC offset.
    def to_local(time)
      raise ArgumentError, 'time must be specified' unless time

      Timestamp.for(time) do |ts|
        LocalTimestamp.localize(ts, period_for(ts))
      end
    end

    # Converts a time in UTC to the local time for the time zone.
    #
    # The result will be of type {LocalTime} (if passed a `Time`),
    # {LocalDateTime} (if passed a `DateTime`) or {LocalTimestamp} (if passed a
    # {Timestamp}). {LocalTime}, {LocalDateTime} and {LocalTimestamp} are
    # subclasses of `Time`, `DateTime` and {Timestamp} that provide additional
    # information about the local result.
    #
    # The UTC offset of the `utc_time` parameter is ignored (it is treated as a
    # UTC time). Use the {to_local} method instead if the the UTC offset of the
    # time needs to be taken into consideration.
    #
    # @param utc_time [Object] a `Time`, `DateTime` or {Timestamp}.
    # @return [Object] the local equivalent of `utc_time` as a {LocalTime},
    #   {LocalDateTime} or {LocalTimestamp}.
    # @raise [ArgumentErrror] if `utc_time` is `nil`.
    def utc_to_local(utc_time)
      raise ArgumentError, 'utc_time must be specified' unless utc_time

      Timestamp.for(utc_time, offset: :ignore) do |ts|
        to_local(ts.utc)
      end
    end

    # Converts a local time for the time zone to UTC.
    #
    # The result will either be a `Time`, `DateTime` or {Timestamp} according to
    # the type of the `local_time` parameter.
    #
    # The UTC offset of the `local_time` parameter is ignored (it is treated as
    # a time in the time zone represented by `self`).
    #
    # _Warning:_ There are local times that have no equivalent UTC times (for
    # example, during the transition from standard time to daylight savings
    # time). There are also local times that have more than one UTC equivalent
    # (for example in the transition from daylight savings time to standard
    # time).
    #
    # In the first case (no equivalent UTC time), a {PeriodNotFound} exception
    # will be raised.
    #
    # In the second case (more than one equivalent UTC time), an {AmbiguousTime}
    # exception will be raised unless the optional `dst` parameter or block
    # handles the ambiguity.
    #
    # If the ambiguity is due to a transition from daylight savings time to
    # standard time, the `dst` parameter can be used to select whether the
    # daylight savings time or local time is used. For example, the following
    # code would raise an {AmbiguousTime} exception:
    #
    #     tz = TZInfo::Timezone.get('America/New_York')
    #     tz.period_for_local(Time.new(2004,10,31,1,30,0))
    #
    # Specifying `dst = true` would select the daylight savings period from
    # April to October 2004. Specifying `dst = false` would return the
    # standardtime period from October 2004 to April 2005.
    #
    # The `dst` parameter will not be able to resolve an ambiguity resulting
    # from the clocks being set back without changing from daylight savings time
    # to standard time. In this case, if a block is specified, it will be called
    # to resolve the ambiguity. The block must take a single parameter - an
    # `Array` of {TimezonePeriod}s that need to be resolved. The block can
    # select and return a single {TimezonePeriod} or return `nil` or an empty
    # `Array` to cause an {AmbiguousTime} exception to be raised.
    #
    # The default value of the `dst` parameter can be specified using
    # {Timezone.default_dst=}.
    #
    # @param local_time [Object] a `Time`, `DateTime` or {Timestamp}.
    # @param dst [Boolean] whether to resolve ambiguous local times by always
    #   selecting the period observing daylight savings time (`true`), always
    #   selecting the period observing standard time (`false`), or leaving the
    #   ambiguity unresolved (`nil`).
    # @yield [periods] if the `dst` parameter did not resolve an ambiguity, an
    #   optional block is yielded to.
    # @yieldparam periods [Array<TimezonePeriod>] an `Array` containing all
    #   the {TimezonePeriod}s that still match `local_time` after applying the
    #   `dst` parameter.
    # @yieldreturn [Object] to resolve the ambiguity: a chosen {TimezonePeriod}
    #   or an `Array` containing a chosen {TimezonePeriod}; to leave the
    #   ambiguity unresolved: an empty `Array`, an `Array` containing more than
    #   one {TimezonePeriod}, or `nil`.
    # @return [Object] the UTC equivalent of `local_time` as a `Time`,
    #   `DateTime` or {Timestamp}.
    # @raise [ArgumentError] if `local_time` is `nil`.
    # @raise [PeriodNotFound] if `local_time` is not valid for the time zone
    #   (there is no equivalent UTC time).
    # @raise [AmbiuousTime] if `local_time` was ambiguous for the time zone and
    #   the `dst` parameter or block did not resolve the ambiguity.
    def local_to_utc(local_time, dst = Timezone.default_dst)
      raise ArgumentError, 'local_time must be specified' unless local_time

      Timestamp.for(local_time, offset: :ignore) do |ts|
        period = if block_given?
          period_for_local(ts, dst) {|periods| yield periods }
        else
          period_for_local(ts, dst)
        end

        (ts - period.utc_total_offset).utc
      end
    end

    # Returns the unique offsets used by the time zone up to a given time (`to`)
    # as an `Array` of {TimezoneOffset} instances.
    #
    # A from time may also be supplied using the `from` parameter. If from is
    # not `nil`, only offsets used from that time onwards will be returned.
    #
    # Comparisons with `to` are exclusive. Comparisons with `from` are
    # inclusive.
    #
    # @param to [Object] a `Time`, `DateTime` or {Timestamp} specifying the
    #   latest (exclusive) offset to return.
    # @param from [Object] an optional `Time`, `DateTime` or {Timestamp}
    #   specifying the earliest (inclusive) offset to return.
    # @return [Array<TimezoneOffsets>] the offsets that are used earlier than
    #   `to` and, if specified, at or later than `from`. Offsets may be returned
    #   in any order.
    # @raise [ArgumentError] if `from` is specified and `to` is not greater than
    #   `from`.
    # @raise [ArgumentError] is raised if `to` is `nil`.
    # @raise [ArgumentError] if either `to` or `from` is a {Timestamp} with an
    #   unspecified offset.
    def offsets_up_to(to, from = nil)
      raise ArgumentError, 'to must be specified' unless to

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

    # Returns the canonical identifier of this time zone.
    #
    # This is a shortcut for calling `canonical_zone.identifier`. Please refer
    # to the {canonical_zone} documentation for further information.
    #
    # @return [String] the canonical identifier of this time zone.
    def canonical_identifier
      canonical_zone.identifier
    end

    # @return [LocalTime] the current local time in the time zone.
    def now
      to_local(Time.now)
    end

    # @return [TimezonePeriod] the current {TimezonePeriod} for the time zone.
    def current_period
      period_for(Time.now)
    end

    # Returns the current local time and {TimezonePeriod} for the time zone as
    # an `Array`. The first element is the time as a {LocalTime}. The second
    # element is the period.
    #
    # The current local time and {TimezonePeriod} can also be obtained as
    # follows:
    #
    #     local_time = timezone.now
    #     period = local_time.period
    #
    # @return [Array] an `Array` containing the current {LocalTime} for the
    #   time zone as the first element and the current {TimezonePeriod} for the
    #   time zone as the second element.
    def current_period_and_time
      local_time = now
      [local_time, local_time.period]
    end
    alias current_time_and_period current_period_and_time

    # Converts a time to local time for the time zone and returns a `String`
    # representation of the local time according to the given format.
    #
    # `Timezone#strftime` first expands any occurrences of `%Z` in the format
    # string to the time zone abbreviation for the local time (for example, EST
    # or EDT). Depending on the type of `time` parameter, the result of the
    # expansion is then passed to either `Time#strftime`, `DateTime#strftime` or
    # `Timestamp#strftime` to handle any other format directives.
    #
    # This method is equivalent to the following:
    #
    #     time_zone.to_local(time).strftime(format)
    #
    # @param format [String] the format string.
    # @param time [Object] a `Time`, `DateTime` or `Timestamp`.
    # @return [String] the formatted local time.
    # @raise [ArgumentError] if `format` or `time` are `nil`.
    # @raise [ArgumentError] if `time` is a {Timestamp} with an unspecified UTC
    #   offset.
    def strftime(format, time = Time.now.utc)
      to_local(time).strftime(format)
    end

    # Compares this {Timezone} with another based on the {identifier}.
    #
    # @param tz [Object] an `Object` to compare this {Timezone} with.
    # @return [Integer] -1 if `tz` is less than `self`, 0 if `tz` is equal to
    #   `self` and +1 if `tz` is greater than `self`, or `nil` if `tz` is not an
    #   instance of {Timezone}.
    def <=>(tz)
      return nil unless tz.is_a?(Timezone)
      identifier <=> tz.identifier
    end

    # @param tz [Object] an `Object` to compare this {Timezone} with.
    # @return [Boolean] `true` if `tz` is an instance of {Timezone} and has the
    #   same {identifier} as `self`, otherwise `false`.
    def eql?(tz)
      self == tz
    end

    # @return [Integer] a hash based on the {identifier}.
    def hash
      identifier.hash
    end

    # Returns a serialized representation of this {Timezone}. This method is
    # called when using `Marshal.dump` with an instance of {Timezone}.
    #
    # @param limit [Integer] the maximum depth to dump - ignored.
    # @return [String] a serialized representation of this {Timezone}.
    def _dump(limit)
      identifier
    end

    # Loads a {Timezone} from the serialized representation returned by {_dump}.
    # This is method is called when using `Marshal.load` or `Marshal.restore`
    # to restore a serialized {Timezone}.
    #
    # @param data [String] a serialized representation of a {Timezone}.
    # @return [Timezone] the result of converting `data` back into a {Timezone}.
    def self._load(data)
      Timezone.get(data)
    end

    private

    # @param [Enumerable<String>] identifiers an `Enumerable` of time zone
    #   identifiers.
    # @return [Array<TimezoneProxy>] an `Array` of {TimezoneProxy}
    #   instances corresponding to the given identifiers.
    def self.get_proxies(identifiers)
      identifiers.collect {|identifier| get_proxy(identifier)}
    end

    # @return [DataSource] the current DataSource.
    def self.data_source
      DataSource.get
    end

    # Raises an {UnknownTimezone} exception.
    #
    # @raise [UnknownTimezone] always.
    def raise_unknown_timezone
      raise UnknownTimezone, 'TZInfo::Timezone should not be constructed directly (use TZInfo::Timezone.get instead)'
    end
  end
end
