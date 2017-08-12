module TZInfo
  # A Timezone within a Country. This contains extra information about the
  # Timezone that is specific to the Country (a Timezone could be used by
  # multiple countries).
  class CountryTimezone
    # The zone identifier.
    attr_reader :identifier

    # The latitude of this timezone in degrees as a Rational.
    attr_reader :latitude

    # The longitude of this timezone in degrees as a Rational.
    attr_reader :longitude

    # A description of this timezone in relation to the country, e.g.
    # "Eastern Time". This is usually nil for countries having only a single
    # Timezone.
    attr_reader :description

    # Creates a new CountryTimezone with a timezone identifier, latitude,
    # longitude and description. The latitude and longitude must be specified
    # as instances of Rational.
    #
    # The passed in identifier and description instances will be frozen.
    #
    # CountryTimezone instances should normally only be constructed when
    # by implementations of DataSource.
    def initialize(identifier, latitude, longitude, description = nil)
      @identifier = identifier.freeze
      @latitude = latitude
      @longitude = longitude
      @description = description.freeze
    end

    # The Timezone (actually a TimezoneProxy for performance reasons).
    def timezone
      Timezone.get_proxy(@identifier)
    end

    # if description is not nil, this method returns description; otherwise it
    # returns timezone.friendly_identifier(true).
    def description_or_friendly_identifier
      description || timezone.friendly_identifier(true)
    end

    # Returns true if and only if the given CountryTimezone is equal to the
    # current CountryTimezone (has the same identifer, latitude, longitude
    # and description).
    def ==(ct)
      ct.kind_of?(CountryTimezone) &&
        identifier == ct.identifier  && latitude == ct.latitude &&
        longitude == ct.longitude   && description == ct.description
    end

    # Returns true if and only if the given CountryTimezone is equal to the
    # current CountryTimezone (has the same identifer, latitude, longitude
    # and description).
    def eql?(ct)
      self == ct
    end

    # Returns a hash of this CountryTimezone.
    def hash
      [@identifier, @latitude, @longitude, @description].hash
    end
  end
end
