$:.unshift File.join(File.dirname(__FILE__), "..", "lib")
require 'test/unit'
require 'tzinfo/country_timezone'

include TZInfo

class TCCountryInfo < Test::Unit::TestCase
  
  def test_code
    ci = CountryInfo.new('ZZ', 'Zzz') {|c| }
    assert_equal('ZZ', ci.code)
  end
  
  def test_name
    ci = CountryInfo.new('ZZ', 'Zzz') {|c| }
    assert_equal('Zzz', ci.name)
  end
  
  def test_zone_identifiers_empty
    ci = CountryInfo.new('ZZ', 'Zzz') {|c| }
    assert(ci.zone_identifiers.empty?)
    assert(ci.zone_identifiers.frozen?)
  end
  
  def test_zone_identifiers_no_block
    ci = CountryInfo.new('ZZ', 'Zzz')
    assert(ci.zone_identifiers.empty?)
    assert(ci.zone_identifiers.frozen?)
  end
  
  def test_zone_identifiers
    ci = CountryInfo.new('ZZ', 'Zzz') do |c|
      assert_same(ci, c)
      c.timezone('ZZ/TimezoneB', Rational(1, 2), Rational(1, 2), 'Timezone B')
      c.timezone('ZZ/TimezoneA', Rational(1, 4), Rational(1, 4), 'Timezone A')
      c.timezone('ZZ/TimezoneC', Rational(-10, 3), Rational(-20, 7), 'C')
      c.timezone('ZZ/TimezoneD', Rational(-10, 3), Rational(-20, 7))
    end
    
    assert_equal(['ZZ/TimezoneB', 'ZZ/TimezoneA', 'ZZ/TimezoneC', 'ZZ/TimezoneD'], ci.zone_identifiers)
    assert(ci.zone_identifiers.frozen?)
  end
  
  def test_zones_empty
    ci = CountryInfo.new('ZZ', 'Zzz') {|c| }
    assert(ci.zones.empty?)
    assert(ci.zones.frozen?)
  end
  
  def test_zones_no_block
    ci = CountryInfo.new('ZZ', 'Zzz')
    assert(ci.zones.empty?)
    assert(ci.zones.frozen?)
  end
  
  def test_zones
    ci = CountryInfo.new('ZZ', 'Zzz') do |c|
      assert_same(ci, c)
      c.timezone('ZZ/TimezoneB', Rational(1, 2), Rational(1, 2), 'Timezone B')
      c.timezone('ZZ/TimezoneA', Rational(1, 4), Rational(1, 4), 'Timezone A')
      c.timezone('ZZ/TimezoneC', Rational(-10, 3), Rational(-20, 7), 'C')
      c.timezone('ZZ/TimezoneD', Rational(-10, 3), Rational(-20, 7))
    end
    
    assert_equal([CountryTimezone.new('ZZ/TimezoneB', Rational(1, 2), Rational(1, 2), 'Timezone B'),
      CountryTimezone.new('ZZ/TimezoneA', Rational(1, 4), Rational(1, 4), 'Timezone A'),
      CountryTimezone.new('ZZ/TimezoneC', Rational(-10, 3), Rational(-20, 7), 'C'),
      CountryTimezone.new('ZZ/TimezoneD', Rational(-10, 3), Rational(-20, 7))],
      ci.zones)
    assert(ci.zones.frozen?)
  end    
end
