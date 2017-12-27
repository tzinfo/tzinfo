# frozen_string_literal: true

module TZInfo
  # The {Localized} module is included in {LocalTime}, {LocalDateTime} and
  # {LocalTimestamp}. It provides an override for the {strftime} method that
  # handles expanding the `%Z` directive according to the
  # {TimezonePeriod#abbreviation abbreviation} of the {TimezonePeriod}
  # associated with a local time.
  module Localized
    # Overrides the `Time`, `DateTime` or {Timestamp} version of `strftime`,
    # replacing `%Z` with the {TimezonePeriod#abbreviation abbreviation} of the
    # associated {TimezonePeriod}. If there is no associated period, `%Z` is
    # expanded by the base class instead.
    #
    # All the format directives handled by the base class are supported.
    #
    # @param format [String] the format string.
    # @return [String] the formatted time.
    # @raise [ArgumentError] if `format` is `nil`.
    def strftime(format)
      raise ArgumentError, 'format must be specified' unless format

      if_period do |p|
        abbreviation = p.abbreviation.to_s.gsub(/%/, '%%')

        format = format.gsub(/%(%*)Z/) do
          if $1.length.odd?
            # Return %%Z so the real strftime treats it as a literal %Z too.
            "#$1%Z"
          else
            "#$1#{abbreviation}"
          end
        end
      end

      super
    end

    protected

    # Performs a calculation if there is an associated {TimezonePeriod}.
    #
    # @param result [Object] a result value that can be manipulated by the block
    #   if there is an associated {TimezonePeriod}.
    # @yield [period, result] if there is an associated {TimezonePeriod}, the
    #   block is yielded to in order to calculate the method result.
    # @yieldparam period [TimezonePeriod] the associated {TimezonePeriod}.
    # @yieldparam result [Object] the `result` parameter.
    # @yieldreturn [Object] the result of the calculation performed if there is
    #   an associated {TimezonePeriod}.
    # @return [Object] the result of the block if there is an associated
    #   {TimezonePeriod}, otherwise the `result` parameter.
    #
    # @private
    def if_period(result = nil) #:nodoc:
      p = period
      p ? yield(p, result) : result
    end
  end
end
