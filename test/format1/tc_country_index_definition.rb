# frozen_string_literal: true

require_relative '../test_utils'

include TZInfo

module Format1
  class TCCountryIndexDefinition < Minitest::Test

    def test_none
      m = Module.new
      m.send(:include, CountryIndexDefinition)

      countries = m.countries
      assert_equal({}, countries)
      assert(countries.frozen?)
    end

    def test_multiple
      m = Module.new
      m.send(:include, CountryIndexDefinition)

      m.send(:country, 'ZZ', 'Country One') do |c|
        assert_kind_of(CountryDefiner, c)
        c.timezone 'Test/Zone/1', 3, 2, 41, 20
      end

      m.send(:country, 'AA', 'Aland') do |c|
        assert_kind_of(CountryDefiner, c)
        c.timezone 'Test/Zone/3', 71, 30, 358, 15, 'Zone 3'
        c.timezone 'Test/Zone/2', 41, 20, 211, 30
      end

      m.send(:country, 'TE', 'Three')

      m.send(:country, 'FR', 'Four') do |c|
      end

      countries = m.countries
      assert_equal(%w(ZZ AA TE FR), countries.keys)
      assert(countries.frozen?)

      country = countries['ZZ']
      assert_kind_of(DataSources::CountryInfo, country)
      assert_equal('ZZ', country.code)
      assert_equal('Country One', country.name)
      assert_equal([CountryTimezone.new('Test/Zone/1', Rational(3, 2), Rational(41, 20))], country.zones)

      country = countries['AA']
      assert_kind_of(DataSources::CountryInfo, country)
      assert_equal('AA', country.code)
      assert_equal('Aland', country.name)
      assert_equal([
        CountryTimezone.new('Test/Zone/3', Rational(71, 30), Rational(358, 15), 'Zone 3'),
        CountryTimezone.new('Test/Zone/2', Rational(41, 20), Rational(211, 30))], country.zones)

      country = countries['TE']
      assert_kind_of(DataSources::CountryInfo, country)
      assert_equal('TE', country.code)
      assert_equal('Three', country.name)
      assert_equal([], country.zones)

      country = countries['FR']
      assert_kind_of(DataSources::CountryInfo, country)
      assert_equal('FR', country.code)
      assert_equal('Four', country.name)
      assert_equal([], country.zones)
    end

    def test_redefined
      m = Module.new
      m.send(:include, CountryIndexDefinition)

      m.send(:country, 'TT', 'Test1') do |c|
        assert_kind_of(CountryDefiner, c)
        c.timezone 'Test/Zone/1', 1, 2, 3, 4, 'Zone 1'
      end

      m.send(:country, 'TT', 'Test2') do |c|
        assert_kind_of(CountryDefiner, c)
        c.timezone 'Test/Zone/2', 5, 6, 7, 8, 'Zone 2'
      end

      countries = m.countries
      assert_equal(%w(TT), countries.keys)
      assert(countries.frozen?)

      country = countries['TT']
      assert_kind_of(DataSources::CountryInfo, country)
      assert_equal('TT', country.code)
      assert_equal('Test2', country.name)
      assert_equal([CountryTimezone.new('Test/Zone/2', Rational(5, 6), Rational(7, 8), 'Zone 2')], country.zones)
    end

    def test_strings_frozen
      m = Module.new
      m.send(:include, CountryIndexDefinition)

      m.send(:country, 'TT', 'Test') do |c|
        assert_kind_of(CountryDefiner, c)
        c.timezone 'Test/Zone/1', 1, 2, 3, 4, 'Zone One'
      end

      countries = m.countries
      assert(countries.keys.all?(&:frozen?))
      country = countries['TT']
      assert(country.code.frozen?)
      assert(country.name.frozen?)
      zone = country.zones.first
      assert(zone.identifier.frozen?)
      assert(zone.description.frozen?)
    end

    def test_tzinfo_module_alias
      assert_same(CountryIndexDefinition, CountryIndexDefinition)
    end
  end
end
