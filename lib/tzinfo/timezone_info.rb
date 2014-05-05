module TZInfo
  # Represents a timezone defined by a data source.
  class TimezoneInfo
    
    # The timezone identifier.
    attr_reader :identifier
    
    # Constructs a new TimezoneInfo with an identifier.
    def initialize(identifier)
      @identifier = identifier
    end
    
    # Returns internal object state as a programmer-readable string.
    def inspect
      "#<#{self.class}: #@identifier>"
    end
    
    # Constructs a Timezone instance for the timezone represented by this
    # TimezoneInfo.
    def create_timezone
      raise NotImplementedError, 'Subclasses must override create_timezone'
    end
  end
end
