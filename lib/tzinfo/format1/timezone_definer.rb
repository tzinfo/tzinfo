module TZInfo
  module Format1
    # Instances of Format1::TimezoneDefiner are yielded to TZInfo::Data format 1
    # modules by TimezoneDefinition to allow the offsets and transitions of the
    # time zone to be specified.
    #
    # @private
    class TimezoneDefiner < Format2::TimezoneDefiner #:nodoc:
      # Defines a transition to a given offset.
      #
      # year and month are Integers giving the UTC year and month in which the
      # transition occurs. These values were used in earlier versions of TZInfo,
      # but are now ignored.
      #
      # offset_id references the id of a previously defined offset.
      #
      # timestamp is the time the transition occurs as an Integer number of
      # seconds since 1970-01-01 00:00:00 UTC ignoring leap seconds (i.e. each
      # day is treated as if it were 86,400 seconds long).
      #
      # date_time_numerator and date_time_denominator give the time of the
      # transition as the numerator and denominator of the Rational returned by
      # DateTime#ajd. These values were used in earlier versions of TZInfo, but
      # are now ignored.
      #
      # Transitions must be defined in increasing time order.
      #
      # Raises ArgumentError if offset_id does not reference a defined offset.
      #
      # Raises ArgumentError if timestamp is not greater than the timestamp of
      # the previously defined transtion.
      #
      # Raises ArgumentError if date_time_numerator is specified, but
      # date_time_denominator is not. In old versions of TZInfo, it was possible
      # to define a transition with the DateTime numerator as the 4th parameter
      # and the denominator as the 5th parameter. This style of definition is
      # not used in released versions of TZInfo::Data.
      def transition(year, month, offset_id, timestamp, date_time_numerator = nil, date_time_denominator = nil)
        raise ArgumentError, 'DateTime-only transitions are not supported' if date_time_numerator && !date_time_denominator
        super(offset_id, timestamp)
      end
    end
  end
end
