require File.join(File.expand_path(File.dirname(__FILE__)), '..', 'test_utils')

include TZInfo

module Format2
  class TCCountryDefiner < Minitest::Test
    def test_no_timezones
      cd = Format2::CountryDefiner.new({})
      assert_equal([], cd.timezones)
    end

    def test_defined_timezones
      cd = Format2::CountryDefiner.new({})
      cd.timezone('Test/One',   1, 2,  3, 4)
      cd.timezone('Test/Two',  -1, 2, -3, 4, nil)
      cd.timezone('Test/Three', 5, 6, -7, 8, 'Test Three')
      assert_equal([
        CountryTimezone.new('Test/One',   Rational( 1, 2), Rational( 3, 4), nil),
        CountryTimezone.new('Test/Two',   Rational(-1, 2), Rational(-3, 4), nil),
        CountryTimezone.new('Test/Three', Rational( 5, 6), Rational(-7, 8), 'Test Three')], cd.timezones)
    end

    def test_shared_timezones
      shared_timezones = {
        t1: CountryTimezone.new('Test/One',   Rational( 1, 2), Rational( 3, 4), nil),
        t2: CountryTimezone.new('Test/Two',   Rational(-1, 2), Rational(-3, 4), nil),
        t3: CountryTimezone.new('Test/Three', Rational( 5, 6), Rational(-7, 8), 'Test Three')
      }
      cd = Format2::CountryDefiner.new(shared_timezones)
      cd.timezone(:t1)
      cd.timezone(:t2)
      cd.timezone(:t3)
      assert_equal(3, cd.timezones.length)
      assert_same(shared_timezones[:t1], cd.timezones[0])
      assert_same(shared_timezones[:t2], cd.timezones[1])
      assert_same(shared_timezones[:t3], cd.timezones[2])
    end

    def test_shared_timezone_not_found
      cd = Format2::CountryDefiner.new({})
      assert_raises(ArgumentError) { cd.timezone(:t1) }
    end

    def test_missing_arguments
      cd = Format2::CountryDefiner.new({
        t1: CountryTimezone.new('Test/One',   Rational( 1, 2), Rational( 3, 4), nil)
      })
      assert_raises(ArgumentError) { cd.timezone(:t1, 1) }
      assert_raises(ArgumentError) { cd.timezone(:t1, 1, 2) }
      assert_raises(ArgumentError) { cd.timezone(:t1, 1, 2, 3) }
    end

    def test_strings_frozen
      cd = Format2::CountryDefiner.new({})
      cd.timezone('Test/One', 1, 2, 3, 4, 'Test 1')
      timezone = cd.timezones.first
      assert(timezone.identifier.frozen?)
      assert(timezone.description.frozen?)
    end
  end
end
