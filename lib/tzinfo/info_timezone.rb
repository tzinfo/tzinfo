module TZInfo

  # A Timezone based on a DataSources::TimezoneInfo.
  class InfoTimezone < Timezone

    # Constructs a new InfoTimezone with a DataSources::TimezoneInfo instance.
    def initialize(info)
      super()
      @info = info
    end

    # The identifier of the timezone, e.g. "Europe/Paris".
    def identifier
      @info.identifier
    end

    protected
      # The DataSources::TimezoneInfo for this Timezone.
      def info
        @info
      end
  end
end
