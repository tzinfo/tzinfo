require File.join(File.expand_path(File.dirname(__FILE__)), '..', 'test_utils')

include TZInfo

module Format2
  class TCCountryIndexDefiner < Minitest::Test

    def test_none
      d = Format2::CountryIndexDefiner.new

      countries = d.countries
      assert_equal({}, countries)
    end

    def test_multiple
      d = Format2::CountryIndexDefiner.new

      d.timezone(:t1, 'Test/Zone/Shared1', -1, -2, -3, -4)
      d.timezone(:t2, 'Test/Zone/Shared2', 1, 2, 3, 4, 'Shared 2')

      d.country('ZZ', 'Country One') do |c|
        assert_kind_of(Format2::CountryDefiner, c)
        c.timezone :t1
        c.timezone 'Test/Zone/1', 3, 2, 41, 20
      end

      d.country('AA', 'Aland') do |c|
        assert_kind_of(Format2::CountryDefiner, c)
        c.timezone 'Test/Zone/3', 71, 30, 358, 15, 'Zone 3'
        c.timezone 'Test/Zone/2', 41, 20, 211, 30
        c.timezone :t1
        c.timezone :t2
      end

      d.country('TE', 'Three')

      d.country('FR', 'Four') do |c|
      end

      countries = d.countries
      assert_equal(%w(ZZ AA TE FR), countries.keys)

      country_zz = countries['ZZ']
      assert_kind_of(CountryInfo, country_zz)
      assert_equal('ZZ', country_zz.code)
      assert_equal('Country One', country_zz.name)
      assert_equal([
        CountryTimezone.new('Test/Zone/Shared1', Rational(-1, -2), Rational(-3, -4)),
        CountryTimezone.new('Test/Zone/1', Rational(3, 2), Rational(41, 20))], country_zz.zones)

      country_aa = countries['AA']
      assert_kind_of(CountryInfo, country_aa)
      assert_equal('AA', country_aa.code)
      assert_equal('Aland', country_aa.name)
      assert_equal([
        CountryTimezone.new('Test/Zone/3', Rational(71, 30), Rational(358, 15), 'Zone 3'),
        CountryTimezone.new('Test/Zone/2', Rational(41, 20), Rational(211, 30)),
        CountryTimezone.new('Test/Zone/Shared1', Rational(-1, -2), Rational(-3, -4)),
        CountryTimezone.new('Test/Zone/Shared2', Rational(1, 2), Rational(3, 4), 'Shared 2')], country_aa.zones)

      assert_same(country_zz.zones[0], country_aa.zones[2])

      country_te = countries['TE']
      assert_kind_of(CountryInfo, country_te)
      assert_equal('TE', country_te.code)
      assert_equal('Three', country_te.name)
      assert_equal([], country_te.zones)

      country_fr = countries['FR']
      assert_kind_of(CountryInfo, country_fr)
      assert_equal('FR', country_fr.code)
      assert_equal('Four', country_fr.name)
      assert_equal([], country_fr.zones)
    end

    def test_redefined_country
      d = Format2::CountryIndexDefiner.new

      d.country('TT', 'Test1') do |c|
        assert_kind_of(Format2::CountryDefiner, c)
        c.timezone 'Test/Zone/1', 1, 2, 3, 4, 'Zone 1'
      end

      d.country('TT', 'Test2') do |c|
        assert_kind_of(Format2::CountryDefiner, c)
        c.timezone 'Test/Zone/2', 5, 6, 7, 8, 'Zone 2'
      end

      countries = d.countries
      assert_equal(%w(TT), countries.keys)

      country_tt = countries['TT']
      assert_kind_of(CountryInfo, country_tt)
      assert_equal('TT', country_tt.code)
      assert_equal('Test2', country_tt.name)
      assert_equal([CountryTimezone.new('Test/Zone/2', Rational(5, 6), Rational(7, 8), 'Zone 2')], country_tt.zones)
    end

    def test_redefined_shared_timezone
      d = Format2::CountryIndexDefiner.new

      d.timezone(:t1, 'Test/Zone/Shared1', -1, -2, -3, -4)
      d.timezone(:t1, 'Test/Zone/Shared2', 1, 2, 3, 4, 'Shared 2')

      d.country('TT', 'Test1') do |c|
        assert_kind_of(Format2::CountryDefiner, c)
        c.timezone(:t1)
      end

      countries = d.countries
      assert_equal(%w(TT), countries.keys)

      country_tt = countries['TT']
      assert_kind_of(CountryInfo, country_tt)
      assert_equal('TT', country_tt.code)
      assert_equal('Test1', country_tt.name)
      assert_equal([CountryTimezone.new('Test/Zone/Shared2', Rational(1, 2), Rational(3, 4), 'Shared 2')], country_tt.zones)
    end

    def test_strings_frozen
      d = Format2::CountryIndexDefiner.new

      d.timezone(:t1, 'Test/Zone/Shared1', 1, 2, 3, 4, 'Shared 1')

      d.country('TT', 'Test') do |c|
        assert_kind_of(Format2::CountryDefiner, c)
        c.timezone 'Test/Zone/1', 1, 2, 3, 4, 'Zone One'
        c.timezone :t1
      end

      countries = d.countries
      assert(countries.keys.all?(&:frozen?))
      country_tt = countries['TT']
      assert(country_tt.code.frozen?)
      assert(country_tt.name.frozen?)
      zone0 = country_tt.zones[0]
      assert(zone0.identifier.frozen?)
      assert(zone0.description.frozen?)
      zone1 = country_tt.zones[1]
      assert(zone1.identifier.frozen?)
      assert(zone1.description.frozen?)
    end
  end
end
