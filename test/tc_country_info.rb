require File.join(File.expand_path(File.dirname(__FILE__)), 'test_utils')

include TZInfo

class TCCountryInfo < Minitest::Test

  def test_code
    ci = CountryInfo.new('ZZ', 'Zzz', [])
    assert_equal('ZZ', ci.code)
  end

  def test_name
    ci = CountryInfo.new('ZZ', 'Zzz', [])
    assert_equal('Zzz', ci.name)
  end

  def test_zone_identifiers_empty
    ci = CountryInfo.new('ZZ', 'Zzz', [])
    value = ci.zone_identifiers
    assert_equal([], value)
    assert(value.frozen?)
  end

  def test_zone_identifiers
    zones = [
      CountryTimezone.new('ZZ/TimezoneB', Rational(1, 2), Rational(1, 2), 'Timezone B'),
      CountryTimezone.new('ZZ/TimezoneA', Rational(1, 4), Rational(1, 4), 'Timezone A'),
      CountryTimezone.new('ZZ/TimezoneC', Rational(-10, 3), Rational(-20, 7), 'C'),
      CountryTimezone.new('ZZ/TimezoneD', Rational(-10, 3), Rational(-20, 7))
    ]

    ci = CountryInfo.new('ZZ', 'Zzz', zones)

    value = ci.zone_identifiers
    assert_equal(['ZZ/TimezoneB', 'ZZ/TimezoneA', 'ZZ/TimezoneC', 'ZZ/TimezoneD'], value)
    assert(value.frozen?)
  end

  def test_zones_empty
    zones = []
    ci = CountryInfo.new('ZZ', 'Zzz', zones)
    value = ci.zones
    assert_equal([], value)
    assert_same(zones, value)
    assert(value.frozen?)
  end

  def test_zones
    zones = [
      CountryTimezone.new('ZZ/TimezoneB', Rational(1, 2), Rational(1, 2), 'Timezone B'),
      CountryTimezone.new('ZZ/TimezoneA', Rational(1, 4), Rational(1, 4), 'Timezone A'),
      CountryTimezone.new('ZZ/TimezoneC', Rational(-10, 3), Rational(-20, 7), 'C'),
      CountryTimezone.new('ZZ/TimezoneD', Rational(-10, 3), Rational(-20, 7))
    ]

    ci = CountryInfo.new('ZZ', 'Zzz', zones)
    value = ci.zones

    assert_equal([CountryTimezone.new('ZZ/TimezoneB', Rational(1, 2), Rational(1, 2), 'Timezone B'),
      CountryTimezone.new('ZZ/TimezoneA', Rational(1, 4), Rational(1, 4), 'Timezone A'),
      CountryTimezone.new('ZZ/TimezoneC', Rational(-10, 3), Rational(-20, 7), 'C'),
      CountryTimezone.new('ZZ/TimezoneD', Rational(-10, 3), Rational(-20, 7))],
      value)
    assert_same(zones, value)
    assert(value.frozen?)
  end
end
