# frozen_string_literal: true

module TZInfo
  # The Localized module is included in LocalTime, LocalDateTime and
  # LocalTimestamp. It provides an overridden strftime method that handles
  # expanding the %Z directive according to the abbreviation of the
  # TimezonePeriod associated with a local time.
  module Localized
    # Overrides the Time, DateTime or Timestamp version of strftime, replacing
    # %Z with the abbreviation of the associated TimezonePeriod (period). If
    # period is nil, %Z is expanded by the base class instead.
    #
    # Supports all the format directives handled by the base class.
    #
    # Raises ArgumentError if format is nil.
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

    # If there is an associated TimezonePeriod, yields the TimezonePeriod and
    # the passed in result to the given block and returns the result of the
    # block. Otherwise returns result.
    def if_period(result = nil)
      p = period
      p ? yield(p, result) : result
    end
  end
end
