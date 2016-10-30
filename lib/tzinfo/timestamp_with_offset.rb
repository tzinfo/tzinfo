module TZInfo
  # Represents an Integer timestamp with an offset from UTC.
  class TimestampWithOffset
    # The timestamp (seconds since 1970-01-01 00:00:00 UTC).
    attr_reader :timestamp

    # The offset from UTC in seconds.
    attr_reader :utc_offset
  
    # Constructs a new TimestampWithOffset with a timestamp (seconds since
    # 1970-01-01 00:00:00 UTC) and an offset from UTC in seconds.
    def initialize(timestamp, utc_offset = 0)
      @timestamp = timestamp
      @utc_offset = utc_offset
    end

    # Adds an integer number of seconds to the timestamp and returns the result
    # as a new TimestampWithOffset instance that has the same utc_offset.
    def +(seconds)
      TimestampWithOffset.new(@timestamp + seconds, @utc_offset)
    end

    # Subtracts an integer number of seconds from the timestamp and returns the
    # result as a new TimestampWithOffset instance that has the same utc_offset.    
    def -(seconds)
      self + (-seconds)
    end

    # Returns a String representation of this TimestampWithOffset.
    def to_s
      return "#{@timestamp} UTC" if @utc_offset == 0

      local_timestamp = @timestamp + @utc_offset
      sign = @utc_offset >= 0 ? '+' : '-'
      
      min, sec = @utc_offset.abs.divmod(60)
      hour, min = min.divmod(60)
      
      "#{local_timestamp} #{sign}#{'%02d' % hour}:#{'%02d' % min}#{sec > 0 ? ':%02d' % sec : nil} (#{@timestamp} UTC)"      
    end
    
    # Returns true if and only if timestamp_with_offset has the same timestamp
    # as this TimestampWithOffset.
    def ==(timestamp_with_offset)
      timestamp_with_offset.kind_of?(TimestampWithOffset) && timestamp == timestamp_with_offset.timestamp
    end
    alias_method :eql?, :==

    # Returns a hash of this TimestampWithOffset.
    def hash
      @timestamp.hash
    end
  end
end
