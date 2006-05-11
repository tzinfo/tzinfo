$:.unshift File.join(File.dirname(__FILE__), "..", "lib")
require 'test/unit'
require 'tzinfo/country_timezone'

include TZInfo

class TCCountryTimezone < Test::Unit::TestCase
  def test_identifier
    ct = CountryTimezone.new('Europe/London', Rational(2059, 40), Rational(-5, 16))    
    assert_equal('Europe/London', ct.identifier)
  end    
  
  def test_latitude
    ct = CountryTimezone.new('Europe/London', Rational(2059, 40), Rational(-5, 16))
    assert_equal(Rational(2059, 40), ct.latitude)
  end
  
  def test_longitude
    ct = CountryTimezone.new('Europe/London', Rational(2059, 40), Rational(-5, 16))
    assert_equal(Rational(-5, 16), ct.longitude)
  end
  
  def test_description_omit
    ct = CountryTimezone.new('Europe/London', Rational(2059, 40), Rational(-5, 16))
    assert_nil(ct.description)
  end
  
  def test_description_nil
    ct = CountryTimezone.new('Europe/London', Rational(2059, 40), Rational(-5, 16), nil)
    assert_nil(ct.description)
  end
  
  def test_description
    ct = CountryTimezone.new('America/New_York', Rational(48857,1200), Rational(-266423,3600), 'Eastern Time')
    assert_equal('Eastern Time', ct.description)
  end
  
  def test_timezone    
    ct = CountryTimezone.new('Europe/London', Rational(2059, 40), Rational(-5, 16))
    assert_kind_of(TimezoneProxy, ct.timezone)
    assert_equal('Europe/London', ct.timezone.identifier)
  end
  
  def test_description_or_friendly_idenfier_no_description
    ct = CountryTimezone.new('Europe/London', Rational(2059, 40), Rational(-5, 16))
    assert_equal('London', ct.description_or_friendly_identifier)
  end
  
  def test_description_or_friendly_idenfier_description
    ct = CountryTimezone.new('America/New_York', Rational(48857,1200), Rational(-266423,3600), 'Eastern Time')
    assert_equal('Eastern Time', ct.description_or_friendly_identifier)
  end
end
