module TZInfo

  # A Timezone based on a TimezoneInfo.
  #
  # @private
  class InfoTimezone < Timezone #:nodoc:

    # Constructs a new InfoTimezone with a TimezoneInfo instance.
    def initialize(info)
      super()
      @info = info
    end

    # The identifier of the timezone, e.g. "Europe/Paris".
    def identifier
      @info.identifier
    end

    protected
      # The TimezoneInfo for this Timezone.
      def info
        @info
      end
  end
end
