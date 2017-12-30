# frozen_string_literal: true

module TZInfo
  # A time represented as an `Integer` number of seconds since 1970-01-01
  # 00:00:00 UTC (ignoring leap seconds), the fraction through the second
  # (sub_second as a `Rational`) and an optional UTC offset. Like Ruby's `Time`
  # class, {Timestamp} can distinguish between a local time with a zero offset
  # and a time specified explicitly as UTC.
  class Timestamp
    include Comparable

    # The Unix epoch (1970-01-01 00:00:00 UTC) as a chronological Julian day
    # number.
    JD_EPOCH = 2440588
    private_constant :JD_EPOCH

    # @return [Integer] the number of seconds since 1970-01-01 00:00:00 UTC
    #   ignoring leap seconds (i.e. each day is treated as if it were 86,400
    #   seconds long).
    attr_reader :value

    # @return [Numeric] The fraction of a second elapsed since timestamp as
    #   either a `Rational` or the `Integer` 0. Always greater than or equal to
    #   0 and less than 1.
    attr_reader :sub_second

    # Initializes a new {Timestamp}.
    #
    # @param value [Integer] the number of seconds since 1970-01-01 00:00:00 UTC
    #   ignoring leap seconds.
    # @param sub_second [Numeric] either a `Rational` that is greater than or
    #   equal to 0 and less than 1, or the `Integer` 0.
    # @param utc_offset [Object] either `nil` for a {Timestamp} without a
    #   specified offset, an offset from UTC specified as an `Integer` number of
    #   seconds or the `Symbol` `:utc`).
    # @raise [ArgumentError] if `value` is not an `Integer`.
    # @raise [ArgumentError] if `sub_second` is not a `Rational`, or the
    #   `Integer` 0.
    # @raise [RangeError] if `sub_second` is a `Rational` but that is less
    #   than 0 or greater than or equal to 1.
    # @raise [ArgumentError] if `utc_offset` is not `nil`, not an `Integer` and
    #   not the `Symbol` `:utc`.
    def initialize(value, sub_second = 0, utc_offset = nil)
      raise ArgumentError, 'value must be an Integer' unless value.kind_of?(Integer)
      raise ArgumentError, 'sub_second must be a Rational or the Integer 0' unless (sub_second.kind_of?(Integer) && sub_second == 0) || sub_second.kind_of?(Rational)
      raise RangeError, 'sub_second must be >= 0 and < 1' if sub_second < 0 || sub_second >= 1
      raise ArgumentError, 'utc_offset must be an Integer, :utc or nil' if utc_offset && utc_offset != :utc && !utc_offset.kind_of?(Integer)
      initialize!(value, sub_second, utc_offset)
    end

    # @return [Integer] the offset from UTC in seconds or `nil` if the
    #   {Timestamp} doesn't have a specified offset.
    def utc_offset
      @utc_offset == :utc ? 0 : @utc_offset
    end

    # @return [Boolean] `true` if this {Timestamp} represents UTC, `false` if
    #   the {Timestamp} wasn't specified as UTC or `nil` if the {Timestamp} has
    #   no specified offset.
    def utc?
      return nil unless @utc_offset
      @utc_offset == :utc
    end

    # Adds a number of seconds to the {Timestamp} value.
    #
    # @param seconds [Integer] the number of seconds to be added.
    # @return [Timestamp] the result of adding `seconds` to the {Timestamp}
    #   value as a new {Timestamp} instance with the same UTC offset.
    # @raise [ArgumentError] if `seconds` is not an `Integer`.
    def +(seconds)
      raise ArgumentError, 'seconds must be an Integer' unless seconds.kind_of?(Integer)
      Timestamp.new(@value + seconds, @sub_second, @utc_offset)
    end

    # Subtracts a number of seconds from the {Timestamp} value.
    #
    # @param seconds [Integer] the number of seconds to be subtracted.
    # @return [Timestamp] the result of subtracting `seconds` from the
    #   {Timestamp} value as a new {Timestamp} instance with the same UTC
    #   offset.
    # @raise [ArgumentError] if `seconds` is not an `Integer`.
    def -(seconds)
      raise ArgumentError, 'seconds must be an Integer' unless seconds.kind_of?(Integer)
      self + (-seconds)
    end

    # @return [Timestamp] a UTC {Timestamp} equivalent to this instance. Returns
    #   `self` if {#utc? self.utc?} is `true`.
    def utc
      return self if @utc_offset == :utc
      Timestamp.new!(@value, @sub_second, :utc)
    end

    # Converts this {Timestamp} to a `Time`.
    #
    # @return [Time] a `Time` representation of this {Timestamp}. If the UTC
    #   offset of this {Timestamp} is not specified, a UTC `Time` will be
    #   returned.
    def to_time
      time = new_time

      if @utc_offset && @utc_offset != :utc
        time.localtime(@utc_offset)
      else
        time.utc
      end
    end

    # Converts this {Timestamp} to a `DateTime`.
    #
    # @return [DateTime] a DateTime representation of this {Timestamp}. If the UTC
    #   offset of this {Timestamp} is not specified, a UTC `DateTime` will be
    #   returned.
    def to_datetime
      new_datetime
    end

    # Converts this {Timestamp} to an `Integer` number of seconds since
    # 1970-01-01 00:00:00 UTC (ignoring leap seconds).
    #
    # @return [Integer] an Integer representation of this {Timestamp} (the
    #   number of seconds since 1970-01-01 00:00:00 UTC ignoring leap seconds).
    def to_i
      value
    end

    # Formats this {Timestamp} according to the directives in the given format
    # string.
    #
    # @param format [String] the format string. Please refer to `Time#strftime`
    #   for a list of supported format directives.
    # @return [String] the formatted {Timestamp}.
    # @raise [ArgumentError] if `format` is not specified.
    def strftime(format)
      raise ArgumentError, 'format must be specified' unless format
      to_time.strftime(format)
    end

    # @return [String] a `String` representation of this {Timestamp}.
    def to_s
      return value_and_sub_second_to_s unless @utc_offset
      return "#{value_and_sub_second_to_s} UTC" if @utc_offset == :utc

      sign = @utc_offset >= 0 ? '+' : '-'
      min, sec = @utc_offset.abs.divmod(60)
      hour, min = min.divmod(60)

      "#{value_and_sub_second_to_s(@utc_offset)} #{sign}#{'%02d' % hour}:#{'%02d' % min}#{sec > 0 ? ':%02d' % sec : nil}#{@utc_offset != 0 ? " (#{value_and_sub_second_to_s} UTC)" : nil}"
    end

    # Compares this {Timestamp} with another.
    #
    # {Timestamp} instances without a defined UTC offset are not comparable with
    # {Timestamp} instances that have a defined UTC offset.
    #
    # @param t [Timestamp] the {Timestamp} to compare this instance with.
    # @return [Integer] -1, 0 or 1 depending if this instance is earlier, equal
    #   or later than `t` respectively. Returns `nil` when comparing a
    #   {Timestamp} that does not have a defined UTC offset with a {Timestamp}
    #   that does have a defined UTC offset. Returns `nil` if `t` is not a
    #   {Timestamp}.
    def <=>(t)
      return nil unless t.kind_of?(Timestamp)
      return nil if utc_offset && !t.utc_offset
      return nil if !utc_offset && t.utc_offset

      result = value <=> t.value
      result = sub_second <=> t.sub_second if result == 0
      result
    end

    alias eql? ==

    # @return [Integer] a hash based on the value, sub-second and whether there
    #   is a defined UTC offset.
    def hash
      [@value, @sub_second, !!@utc_offset].hash
    end

    # @return [String] the internal object state as a programmer-readable
    #   `String`.
    def inspect
      "#<#{self.class}: @value=#{@value}, @sub_second=#{@sub_second}, @utc_offset=#{@utc_offset.inspect}>"
    end

    # When used without a block, returns a {Timestamp} representation of a given
    # `Time`, `DateTime` or {Timestamp}.
    #
    # When called with a block, the {Timestamp} representation of `value` is
    # passed to the block. The block must then return a {Timestamp}, which will
    # be converted back to the type of the initial value. If the initial value
    # was a {Timestamp}, the block result will just be returned.
    #
    # The UTC offset of `value` can either be preserved (the {Timestamp}
    # representation will have the same UTC offset as `value`) or ignored (the
    # {Timestamp} representation will have no defined UTC offset).
    #
    # @param value [Object] a `Time`, `DateTime` or {Timestamp}.
    # @param options [Hash] options used to convert `value`.
    # @option options [Symbol] :offset (:preserve) either `:preserve` or
    #   `:ignore` to  preserve or ignore the offset of `value`.
    # @yield [timestamp] if a block is provided, the {Timestamp} representation
    #   is passed to the block.
    # @yieldparam timestamp [Timestamp] the {Timestamp} representation of
    #   `value`.
    # @yieldreturn [Timestamp] a {Timestamp} to be converted back to the type of
    #   `value`.
    # @return [Object] if called without a block, the {Timestamp} representation
    #   of `value`, otherwise the result of the block, converted back to the
    #   type of `value`.
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

    # Creates a new UTC {Timestamp}.
    #
    # @param value [Integer] the number of seconds since 1970-01-01 00:00:00 UTC
    #   ignoring leap seconds.
    # @param sub_second [Numeric] either a `Rational` that is greater than or
    #   equal to 0 and less than 1, or the `Integer` 0.
    # @raise [ArgumentError] if `value` is not an `Integer`.
    # @raise [ArgumentError] if `sub_second` is not a `Rational`, or the
    #   `Integer` 0.
    # @raise [RangeError] if `sub_second` is a `Rational` but that is less
    #   than 0 or greater than or equal to 1.
    def self.utc(value, sub_second = 0)
      new(value, sub_second, :utc)
    end

    protected

    # Creates a new instance of a `Time` or `Time`-like class matching the
    # {value} and {sub_second} of this {Timestamp}, but not setting the offset.
    #
    # @param klass [Class] the class to instantiate.
    #
    # @private
    def new_time(klass = Time)
      klass.at(@value, @sub_second * 1_000_000)
    end

    # Constructs a new instance of a `DateTime` or `DateTime`-like class with
    # the same {value}, {sub_second} and {utc_offset} as this {Timestamp}.
    #
    # @param klass [Class] the class to instantiate.
    #
    # @private
    def new_datetime(klass = DateTime)
      date_time = klass.jd(JD_EPOCH + ((@value.to_r + @sub_second) / 86400))
      @utc_offset && @utc_offset != 0 && @utc_offset != :utc ? date_time.new_offset(Rational(@utc_offset, 86400)) : date_time
    end

    private

    # Converts the value and sub-seconds to a `String`, adding on the given
    # offset.
    #
    # @param offset [Integer] the offset to add to the value.
    # @return [String] The value and sub-seconds.
    def value_and_sub_second_to_s(offset = 0)
      "#{@value + offset}#{sub_second_to_s}"
    end

    # Converts the {sub_second} value to a `String` suitable for appending to
    # the `String` representation of a {Timestamp}.
    #
    # @return [String] a `String` representation of {sub_second}.
    def sub_second_to_s
      if @sub_second == 0
        ''
      else
        " #{@sub_second.numerator}/#{@sub_second.denominator}"
      end
    end

    # Initializes a new {Timestamp} without validating the parameters. This
    # method is used internally within {Timestamp} to avoid the overhead of
    # checking parameters.
    #
    # @param value [Integer] the number of seconds since 1970-01-01 00:00:00 UTC
    #   ignoring leap seconds.
    # @param sub_second [Numeric] either a `Rational` that is greater than or
    #   equal to 0 and less than 1, or the `Integer` 0.
    # @param utc_offset [Object] either `nil` for a {Timestamp} without a
    #   specified offset, an offset from UTC specified as an `Integer` number of
    #   seconds or the `Symbol` `:utc`).
    def initialize!(value, sub_second = 0, utc_offset = nil)
      @value = value

      # Convert Rational(0,1) to 0.
      @sub_second = sub_second == 0 ? 0 : sub_second

      @utc_offset = utc_offset
    end

    # Constructs a new instance of `self` (i.e. {Timestamp} or a subclass of
    # {Timestamp}) without validating the parameters. This method is used
    # internally within {Timestamp} to avoid the overhead of checking
    # parameters.
    #
    # @param value [Integer] the number of seconds since 1970-01-01 00:00:00 UTC
    #   ignoring leap seconds.
    # @param sub_second [Numeric] either a `Rational` that is greater than or
    #   equal to 0 and less than 1, or the `Integer` 0.
    # @param utc_offset [Object] either `nil` for a {Timestamp} without a
    #   specified offset, an offset from UTC specified as an `Integer` number of
    #   seconds or the `Symbol` `:utc`).
    # @return [Timestamp] a new instance of `self`.
    def self.new!(value, sub_second = 0, utc_offset = nil)
      result = allocate
      result.send(:initialize!, value, sub_second, utc_offset)
      result
    end

    # Creates a {Timestamp} for a given `Time`, optionally ignoring the offset.
    #
    # @param time [Time] a `Time`.
    # @param ignore_offset [Boolean] whether to ignore the offset of `time`.
    # @return [Timestamp] the {Timestamp} representation of `time`.
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

      new!(value, sub_second, utc_offset)
    end

    # Creates a {Timestamp} for a given `DateTime`, optionally ignoring the
    # offset.
    #
    # @param date_time [DateTime] a `DateTime`.
    # @param ignore_offset [Boolean] whether to ignore the offset of
    #   `date_time`.
    # @return [Timestamp] the {Timestamp} representation of `date_time`.
    def self.for_date_time(date_time, ignore_offset)
      value = (date_time.jd - JD_EPOCH) * 86400 + date_time.sec + date_time.min * 60 + date_time.hour * 3600
      sub_second = date_time.sec_fraction

      if ignore_offset
        utc_offset = nil
      else
        utc_offset = (date_time.offset * 86400).to_i
        value -= utc_offset
      end

      new!(value, sub_second, utc_offset)
    end

    # Returns a {Timestamp} for another {Timestamp}, optionally ignoring the
    # offset. If the result would have the same value, the same instance is
    # returned. If the passed in value is an instance of a subclass of
    # {Timestamp}, then a new {Timestamp} will always be returned.
    #
    # @param timestamp [Timestamp] a {Timestamp}.
    # @param ignore_offset [Boolean] whether to ignore the offset of
    #   `timestamp`.
    # @return [Timestamp] a [Timestamp] representation of `timestamp`.
    def self.for_timestamp(timestamp, ignore_offset)
      if ignore_offset && timestamp.utc_offset
        new!(timestamp.value + timestamp.utc_offset, timestamp.sub_second)
      elsif !timestamp.instance_of?(Timestamp)
        new!(timestamp.value, timestamp.sub_second, timestamp.utc? ? :utc : timestamp.utc_offset)
      else
        timestamp
      end
    end
  end
end
