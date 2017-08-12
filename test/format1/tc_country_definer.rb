require File.join(File.expand_path(File.dirname(__FILE__)), '..', 'test_utils')

include TZInfo

module Format1
  class TCCountryDefiner < Minitest::Test
    def test_no_timezones
      cd = Format1::CountryDefiner.new
      assert_equal([], cd.timezones)
    end

    def test_timezones
      cd = Format1::CountryDefiner.new
      cd.timezone('Test/One',   1, 2,  3, 4)
      cd.timezone('Test/Two',  -1, 2, -3, 4, nil)
      cd.timezone('Test/Three', 5, 6, -7, 8, 'Test Three')
      assert_equal([
        CountryTimezone.new('Test/One',   Rational( 1, 2), Rational( 3, 4), nil),
        CountryTimezone.new('Test/Two',   Rational(-1, 2), Rational(-3, 4), nil),
        CountryTimezone.new('Test/Three', Rational( 5, 6), Rational(-7, 8), 'Test Three')], cd.timezones)
    end

    def test_strings_frozen
      cd = Format1::CountryDefiner.new
      cd.timezone('Test/One', 1, 2, 3, 4, 'Test 1')
      timezone = cd.timezones.first
      assert(timezone.identifier.frozen?)
      assert(timezone.description.frozen?)
    end
  end
end
