$:.unshift File.join(File.dirname(__FILE__), "..", "lib")
require 'test/unit'
require 'tzinfo/country'

include TZInfo

class TCCountry < Test::Unit::TestCase
  def test_get_valid
    c = Country.get('GB')
    
    assert_not_nil(c)
    require 'tzinfo/countries/GB'
    assert_same(Countries::GB.instance, c)
    assert_equal('GB', c.code)
  end
    
  def test_get_not_exist
    assert_raise(InvalidCountryCode) {
      Country.get('ZZ')
    }
  end
  
  def test_get_invalid
    assert_raise(InvalidCountryCode) {
      Country.get('../Countries/GB')
    }
  end
  
  def test_get_nil
    assert_raise(InvalidCountryCode) {
      Country.get(nil)
    }
  end
  
  def test_get_case    
    assert_raise(InvalidCountryCode) {
      Country.get('gb')
    }
  end
  
  def test_new_no_args
    c = Country.new
    
    assert_equal('Unknown', c.code)    
  end
  
  def test_new_nil
    c = Country.new(nil)
    
    assert_equal('Unknown', c.code)    
  end
  
  def test_new_arg
    c = Country.new('GB')
    assert_same(Country.get('GB'), c)    
  end
  
  def test_new_arg_not_exist    
    assert_raise(InvalidCountryCode) {
      Country.new('ZZ')
    }
  end 
  
  def test_all_codes
    all_codes = Country.all_codes
    assert_kind_of(Array, all_codes)
  end
  
  def test_all
    all = Country.all    
    assert_equal(Country.all_codes, all.collect {|c| c.code})
  end
  
  def test_code
    assert_equal('Unknown', Country.new.code)
    assert_equal('US', Country.get('US').code)
  end
  
  def test_name
    assert_kind_of(String, Country.get('US').name)
  end
  
  def test_to_s
    assert_equal(Country.get('US').name, Country.get('US').to_s)
    assert_equal(Country.get('GB').name, Country.get('GB').to_s)
  end
  
  def test_zone_names
    zone_names = Country.get('US').zone_names
    assert_kind_of(Array, zone_names)
    assert(zone_names.frozen?)
  end
  
  def test_zone_identifiers
    assert_equal(Country.get('US').zone_names, Country.get('US').zone_identifiers)
  end
  
  def test_zones
    zones = Country.get('US').zones
    assert_equal(Country.get('US').zone_names, zones.collect {|z| z.identifier})
    
    zones.each {|z|
      assert_kind_of(TimezoneProxy, z)
    }
  end
  
  def test_equals
    require 'tzinfo/countries/GB'
    assert(Countries::GB.new == Countries::GB.new)
    assert(Countries::GB.new == Country.get('GB'))
    assert(Country.get('GB') == Countries::GB.new)    
  end
  
  def test_compare
    require 'tzinfo/countries/GB'
    require 'tzinfo/countries/FR'
    require 'tzinfo/countries/US'    
    assert_equal(0, Countries::GB.new <=> Countries::GB.new)
    assert_equal(0, Country.get('GB') <=> Countries::GB.new)
    assert_equal(0, Countries::GB.new <=> Country.get('GB'))
    assert_equal(0, Country.get('GB') <=> Country.get('GB'))
    assert((Country.get('GB') <=> Country.get('US')) < 0)
    assert((Country.get('US') <=> Country.get('GB')) > 0)
    assert((Country.get('FR') <=> Country.get('US')) < 0)
    assert((Country.get('US') <=> Country.get('FR')) > 0)
  end
end