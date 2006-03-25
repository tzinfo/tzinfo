$:.unshift File.join(File.dirname(__FILE__), "..", "lib")
require 'test/unit'
require 'tzinfo/timezone'

include TZInfo

class TCTimezoneBlockCalled < StandardError
end

class TCTimezone < Test::Unit::TestCase
  def test_get_valid_1
    tz = Timezone.get('Europe/London')
    
    assert_not_nil(tz)
    require 'tzinfo/definitions/Europe/London'
    assert_same(Definitions::Europe::London.instance, tz)
    assert_equal('Europe/London', tz.identifier)
  end
  
  def test_get_valid_2
    tz = Timezone.get('UTC')
    
    assert_not_nil(tz)
    require 'tzinfo/definitions/UTC'
    assert_same(Definitions::UTC.instance, tz)    
    assert_equal('UTC', tz.identifier)
  end
  
  def test_get_valid_3
    tz = Timezone.get('America/Argentina/Buenos_Aires')
    
    assert_not_nil(tz)
    assert_same(Definitions::America::Argentina::Buenos_Aires.instance, tz)
    require 'tzinfo/definitions/America/Argentina/Buenos_Aires'
    assert_equal('America/Argentina/Buenos_Aires', tz.identifier)
  end
  
  def test_get_not_exist
    assert_raise(InvalidTimezoneIdentifier) {
      Timezone.get('Nowhere/Special')
    }
  end
  
  def test_get_invalid
    assert_raise(InvalidTimezoneIdentifier) {
      Timezone.get('../Definitions/UTC')
    }
  end
  
  def test_get_nil
    assert_raise(InvalidTimezoneIdentifier) {
      Timezone.get(nil)
    }
  end
  
  def test_get_plus
    tz = Timezone.get('Etc/GMT+1')
    
    assert_not_nil(tz)
    assert_same(Definitions::Etc::GMT__p__1.instance, tz)
    assert_equal('Etc/GMT+1', tz.identifier)
  end
  
  def test_get_minus
    tz = Timezone.get('Etc/GMT-1')
    
    assert_not_nil(tz)
    assert_same(Definitions::Etc::GMT__m__1.instance, tz)
    assert_equal('Etc/GMT-1', tz.identifier)
  end
  
  def test_get_case    
    Timezone.get('Europe/Prague')
    assert_raise(InvalidTimezoneIdentifier) {
      Timezone.get('Europe/prague')
    }
  end
  
  def test_new_no_args
    tz = Timezone.new
    
    assert_equal('Unknown', tz.identifier)
    assert_equal('Unknown', tz.friendly_identifier)
    assert_raise(UnknownTimezone) { tz.utc_to_local(DateTime.new(2006,1,1,1,0,0)) }
    assert_raise(UnknownTimezone) { tz.local_to_utc(DateTime.new(2006,1,1,1,0,0)) }
    assert_raise(UnknownTimezone) { tz.period_for_utc(DateTime.new(2006,1,1,1,0,0)) }
    assert_raise(UnknownTimezone) { tz.period_for_local(DateTime.new(2006,1,1,1,0,0)) }
    assert_raise(UnknownTimezone) { tz.now }
    assert_raise(UnknownTimezone) { tz.current_period_and_time } 
  end
  
  def test_new_nil
    tz = Timezone.new(nil)
    
    assert_equal('Unknown', tz.identifier)
    assert_equal('Unknown', tz.friendly_identifier)
    assert_raise(UnknownTimezone) { tz.utc_to_local(DateTime.new(2006,1,1,1,0,0)) }
    assert_raise(UnknownTimezone) { tz.local_to_utc(DateTime.new(2006,1,1,1,0,0)) }
    assert_raise(UnknownTimezone) { tz.period_for_utc(DateTime.new(2006,1,1,1,0,0)) }
    assert_raise(UnknownTimezone) { tz.period_for_local(DateTime.new(2006,1,1,1,0,0)) }
    assert_raise(UnknownTimezone) { tz.now }
    assert_raise(UnknownTimezone) { tz.current_period_and_time }    
  end
  
  def test_new_arg
    tz = Timezone.new('Europe/London')
    assert_same(Timezone.get('Europe/London'), tz)    
  end
  
  def test_new_arg_not_exist    
    assert_raise(InvalidTimezoneIdentifier) {
      Timezone.new('Nowhere/Special')
    }
  end 
  
  def test_all
    assert_equal(Timezone.all_country_zones, Timezone.all)
  end
  
  def test_all_identifiers
    assert_equal(Timezone.all_country_zone_identifiers, Timezone.all_identifiers)
  end
  
  def test_all_country_zones
    # Probably should relax this test - just need all the zones, don't care
    # about order.
    expected = Country.all.inject([]) {|expected,country|
      expected += country.zones
    }
    expected.uniq!
    
    all_country_zones = Timezone.all_country_zones
    assert_equal(expected, all_country_zones)
    
    all_country_zone_identifiers = Timezone.all_country_zone_identifiers
    assert_equal(all_country_zone_identifiers.length, all_country_zones.length)
    
    all_country_zones.each {|zone|
      assert_kind_of(TimezoneProxy, zone)
      assert(all_country_zone_identifiers.include?(zone.identifier))
    }            
  end
  
  def test_all_country_zone_identifiers
    # Probably should relax this test - just need all the zones, don't care
    # about order.
    expected = Country.all.inject([]) {|expected,country|
      expected += country.zone_identifiers
    }
    expected.uniq!
        
    assert_equal(expected, Timezone.all_country_zone_identifiers)
  end
  
  def test_us_zones   
    # Probably should relax this test - just need all the zones, don't care
    # about order.
    us_zones = Timezone.us_zones
    assert_equal(Country.get('US').zones.uniq, us_zones)
    
    us_zone_identifiers = Timezone.us_zone_identifiers
    assert_equal(us_zone_identifiers.length, us_zones.length)
    
    us_zones.each {|zone|
      assert_kind_of(TimezoneProxy, zone)
      assert(us_zone_identifiers.include?(zone.identifier))
    }
  end
  
  def test_us_zone_identifiers
    # Probably should relax this test - just need all the zones, don't care
    # about order.        
    assert_equal(Country.get('US').zone_identifiers.uniq, Timezone.us_zone_identifiers)
  end
  
  def test_identifier
    assert_equal('Unknown', Timezone.new.identifier)
    assert_equal('Europe/Paris', Timezone.get('Europe/Paris').identifier)    
  end
  
  def test_name
    assert_equal('Unknown', Timezone.new.name)
    assert_equal('Europe/Paris', Timezone.get('Europe/Paris').name)    
  end
  
  def test_friendly_identifier
    assert_equal('Paris', Timezone.get('Europe/Paris').friendly_identifier(true))
    assert_equal('Europe - Paris', Timezone.get('Europe/Paris').friendly_identifier(false))
    assert_equal('Europe - Paris', Timezone.get('Europe/Paris').friendly_identifier)
    assert_equal('Knox, Indiana', Timezone.get('America/Indiana/Knox').friendly_identifier(true))
    assert_equal('America - Knox, Indiana', Timezone.get('America/Indiana/Knox').friendly_identifier(false))
    assert_equal('America - Knox, Indiana', Timezone.get('America/Indiana/Knox').friendly_identifier)
    assert_equal('Dumont D\'Urville', Timezone.get('Antarctica/DumontDUrville').friendly_identifier(true))
    assert_equal('Antarctica - Dumont D\'Urville', Timezone.get('Antarctica/DumontDUrville').friendly_identifier(false))
    assert_equal('Antarctica - Dumont D\'Urville', Timezone.get('Antarctica/DumontDUrville').friendly_identifier)
    assert_equal('McMurdo', Timezone.get('Antarctica/McMurdo').friendly_identifier(true))
    assert_equal('Antarctica - McMurdo', Timezone.get('Antarctica/McMurdo').friendly_identifier(false))
    assert_equal('Antarctica - McMurdo', Timezone.get('Antarctica/McMurdo').friendly_identifier)
    assert_equal('GMT+1', Timezone.get('Etc/GMT+1').friendly_identifier(true))
    assert_equal('Etc - GMT+1', Timezone.get('Etc/GMT+1').friendly_identifier(false))
    assert_equal('Etc - GMT+1', Timezone.get('Etc/GMT+1').friendly_identifier)
    assert_equal('UTC', Timezone.get('UTC').friendly_identifier(true))
    assert_equal('UTC', Timezone.get('UTC').friendly_identifier(false))
    assert_equal('UTC', Timezone.get('UTC').friendly_identifier)
  end
  
  def test_to_s
    assert_equal('Europe - Paris', Timezone.get('Europe/Paris').to_s)
    assert_equal('America - Knox, Indiana', Timezone.get('America/Indiana/Knox').to_s)
    assert_equal('Antarctica - Dumont D\'Urville', Timezone.get('Antarctica/DumontDUrville').to_s)
    assert_equal('Antarctica - McMurdo', Timezone.get('Antarctica/McMurdo').to_s)
    assert_equal('Etc - GMT+1', Timezone.get('Etc/GMT+1').to_s)
    assert_equal('UTC', Timezone.get('UTC').to_s)
  end    
  
  def test_period_for_utc
    dt = DateTime.new(2005,2,18,16,24,23)
    t = Time.utc(2005,2,18,16,24,23)
    t2 = Time.local(2005,2,18,16,24,23)
    ts = t.to_i
        
    dt_period = Timezone.get('Europe/London').period_for_utc(dt)
    t_period = Timezone.get('Europe/London').period_for_utc(t)
    t2_period = Timezone.get('Europe/London').period_for_utc(t2)
    ts_period = Timezone.get('Europe/London').period_for_utc(ts)
    
    assert_equal(DateTime.new(2004,10,31,1,0,0), dt_period.utc_start)
    assert_equal(DateTime.new(2005,3,27,1,0,0), dt_period.utc_end)   
    
    assert_equal(DateTime.new(2004,10,31,1,0,0), t_period.utc_start)
    assert_equal(DateTime.new(2005,3,27,1,0,0), t_period.utc_end)
    
    assert_equal(DateTime.new(2004,10,31,1,0,0), t2_period.utc_start)
    assert_equal(DateTime.new(2005,3,27,1,0,0), t2_period.utc_end)
    
    assert_equal(DateTime.new(2004,10,31,1,0,0), ts_period.utc_start)
    assert_equal(DateTime.new(2005,3,27,1,0,0), ts_period.utc_end)
  end
  
  def test_period_for_local
    dt = DateTime.new(2005,2,18,16,24,23)
    t = Time.utc(2005,2,18,16,24,23)
    t2 = Time.local(2005,2,18,16,24,23)
    ts = t.to_i
    
    dt_period = Timezone.get('Europe/London').period_for_local(dt)
    t_period = Timezone.get('Europe/London').period_for_local(t)
    t2_period = Timezone.get('Europe/London').period_for_local(t2)
    ts_period = Timezone.get('Europe/London').period_for_local(ts)        
    
    assert_equal(DateTime.new(2004,10,31,1,0,0), dt_period.utc_start)
    assert_equal(DateTime.new(2005,3,27,1,0,0), dt_period.utc_end)
    
    assert_equal(DateTime.new(2004,10,31,1,0,0), t_period.utc_start)
    assert_equal(DateTime.new(2005,3,27,1,0,0), t_period.utc_end)
    
    assert_equal(DateTime.new(2004,10,31,1,0,0), t2_period.utc_start)
    assert_equal(DateTime.new(2005,3,27,1,0,0), t2_period.utc_end)
    
    assert_equal(DateTime.new(2004,10,31,1,0,0), ts_period.utc_start)
    assert_equal(DateTime.new(2005,3,27,1,0,0), ts_period.utc_end)
  end
  
  def test_period_for_local_invalid
    assert_raise(PeriodNotFound) {
      Timezone.get('America/New_York').period_for_local(DateTime.new(2004,4,4,2,30,0))
    }
  end
  
  def test_period_for_local_ambiguous
    assert_raise(AmbiguousTime) {
      Timezone.get('America/New_York').period_for_local(DateTime.new(2004,10,31,1,30,0))
    }
  end
  
  def test_period_for_local_dst_flag_resolved
    dt = DateTime.new(2004,10,31,1,30,0)
    tz = Timezone.get('America/New_York')
    
    assert_period_for(DateTime.new(2004,4,4,7,0,0), DateTime.new(2004,10,31,6,0,0), true, tz.period_for_local(dt, true))
    assert_period_for(DateTime.new(2004,10,31,6,0,0), DateTime.new(2005,4,3,7,0,0), false, tz.period_for_local(dt, false))
    assert_period_for(DateTime.new(2004,4,4,7,0,0), DateTime.new(2004,10,31,6,0,0), true, tz.period_for_local(dt, true) {|periods| raise TCTimezoneBlockCalled, 'should not be called' })
    assert_period_for(DateTime.new(2004,10,31,6,0,0), DateTime.new(2005,4,3,7,0,0), false, tz.period_for_local(dt, false) {|periods| raise TCTimezoneBlockCalled, 'should not be called' })
  end
  
  def test_period_for_local_dst_block_called
    dt = DateTime.new(2004,10,31,1,30,0)
    tz = Timezone.get('America/New_York')
    
    assert_raise(TCTimezoneBlockCalled) {
      tz.period_for_local(dt) {|periods|
        assert_equal(2, periods.size)
        assert_period_for(DateTime.new(2004,4,4,7,0,0), DateTime.new(2004,10,31,6,0,0), true, periods[0])
        assert_period_for(DateTime.new(2004,10,31,6,0,0), DateTime.new(2005,4,3,7,0,0), false, periods[1])
        
        # raise exception to test that the block was called
        raise TCTimezoneBlockCalled, 'should be raised'
      }
    }
    
    assert_period_for(DateTime.new(2004,4,4,7,0,0), DateTime.new(2004,10,31,6,0,0), true, tz.period_for_local(dt) {|periods| periods.first})
    assert_period_for(DateTime.new(2004,10,31,6,0,0), DateTime.new(2005,4,3,7,0,0), false,  tz.period_for_local(dt) {|periods| periods.last})
    assert_period_for(DateTime.new(2004,4,4,7,0,0), DateTime.new(2004,10,31,6,0,0), true, tz.period_for_local(dt) {|periods| [periods.first]})
    assert_period_for(DateTime.new(2004,10,31,6,0,0), DateTime.new(2005,4,3,7,0,0), false,  tz.period_for_local(dt) {|periods| [periods.last]})
  end
  
  def test_period_for_local_dst_cannot_resolve
    # At midnight local time on Aug 5 1915 in Warsaw, the clocks were put back
    # 24 minutes and both periods were non-DST. Hence the block should be
    # called regardless of the value of the Boolean dst parameter.
    
    dt = DateTime.new(1915,8,4,23,40,0)
    tz = Timezone.get('Europe/Warsaw')
    
    assert_raise(TCTimezoneBlockCalled) {
      tz.period_for_local(dt, true) {|periods|
        assert_equal(2, periods.size)
        assert_equal(DateTime.new(1915,8,4,22,36,0), periods[0].utc_end)        
        assert_equal(false, periods[0].dst?)        
        assert_period_for(DateTime.new(1915,8,4,22,36,0), DateTime.new(1916,4,30,22,0,0), false, periods[1])
        
        raise TCTimezoneBlockCalled, 'should be raised'
      }
    }
    
    assert_raise(TCTimezoneBlockCalled) {
      tz.period_for_local(dt, false) {|periods|
        assert_equal(2, periods.size)
        assert_equal(DateTime.new(1915,8,4,22,36,0), periods[0].utc_end)        
        assert_equal(false, periods[0].dst?)        
        assert_period_for(DateTime.new(1915,8,4,22,36,0), DateTime.new(1916,4,30,22,0,0), false, periods[1])
        
        raise TCTimezoneBlockCalled, 'should be raised'
      }
    }    
  end
  
  def test_period_for_local_block_ambiguous
    dt = DateTime.new(2004,10,31,1,30,0)
    tz = Timezone.get('America/New_York')
    
    assert_raise(AmbiguousTime) {
      tz.period_for_local(dt) {|periods| nil}
    }
    
    assert_raise(AmbiguousTime) {
      tz.period_for_local(dt) {|periods| periods}
    }
    
    assert_raise(AmbiguousTime) {
      tz.period_for_local(dt) {|periods| []}
    }
    
    assert_raise(AmbiguousTime) {
      tz.period_for_local(dt) {|periods| raise AmbiguousTime, 'Ambiguous time'}
    }
  end
   
  def test_utc_to_local
    dt = DateTime.new(2005,2,18,16,24,23)
    t = Time.utc(2005,2,18,16,24,23)
    t2 = Time.local(2005,2,18,16,24,23)
    ts = t.to_i
        
    assert_equal(dt, Timezone.get('Europe/London').utc_to_local(dt))    
    assert_equal(t, Timezone.get('Europe/London').utc_to_local(t))
    assert_equal(t, Timezone.get('Europe/London').utc_to_local(t2))
    assert_equal(ts, Timezone.get('Europe/London').utc_to_local(ts))
  end    
  
  def test_local_to_utc
    dt = DateTime.new(2005,2,18,16,24,23)
    t = Time.utc(2005,2,18,16,24,23)
    t2 = Time.local(2005,2,18,16,24,23)
    ts = t.to_i
        
    assert_equal(dt, Timezone.get('Europe/London').local_to_utc(dt))    
    assert_equal(t, Timezone.get('Europe/London').local_to_utc(t))
    assert_equal(t, Timezone.get('Europe/London').local_to_utc(t2))
    assert_equal(ts, Timezone.get('Europe/London').local_to_utc(ts))
  end
  
  def test_local_to_utc_invalid
    assert_raise(PeriodNotFound) {
      Timezone.get('America/New_York').local_to_utc(DateTime.new(2004,4,4,2,30,0))
    }
    assert_raise(PeriodNotFound) {
      Timezone.get('America/New_York').local_to_utc(Time.utc(2004,4,4,2,30,0))
    }
    assert_raise(PeriodNotFound) {
      Timezone.get('America/New_York').local_to_utc(Time.utc(2004,4,4,2,30,0).to_i)
    }
  end
  
  def test_local_to_utc_ambiguous
    assert_raise(AmbiguousTime) {
      Timezone.get('America/New_York').local_to_utc(DateTime.new(2004,10,31,1,30,0))
    }
    assert_raise(AmbiguousTime) {
      Timezone.get('America/New_York').local_to_utc(Time.utc(2004,10,31,1,30,0))
    }
    assert_raise(AmbiguousTime) {
      Timezone.get('America/New_York').local_to_utc(Time.utc(2004,10,31,1,30,0).to_i)
    }
  end
  
  def test_local_to_utc_dst_flag_resolved
    dt = DateTime.new(2004,10,31,1,30,0)
    tz = Timezone.get('America/New_York')
    
    assert_equal(DateTime.new(2004,10,31,5,30,0), tz.local_to_utc(dt, true))
    assert_equal(DateTime.new(2004,10,31,6,30,0), tz.local_to_utc(dt, false))
    assert_equal(DateTime.new(2004,10,31,5,30,0), tz.local_to_utc(dt, true) {|periods| raise TCTimezoneBlockCalled, 'should not be called' })
    assert_equal(DateTime.new(2004,10,31,6,30,0), tz.local_to_utc(dt, false) {|periods| raise TCTimezoneBlockCalled, 'should not be called' })
  end
  
  def test_local_to_utc_dst_block_called
    dt = DateTime.new(2004,10,31,1,30,0)
    tz = Timezone.get('America/New_York')
    
    assert_raise(TCTimezoneBlockCalled) {
      tz.local_to_utc(dt) {|periods|
        assert_equal(2, periods.size)
        assert_period_for(DateTime.new(2004,4,4,7,0,0), DateTime.new(2004,10,31,6,0,0), true, periods[0])
        assert_period_for(DateTime.new(2004,10,31,6,0,0), DateTime.new(2005,4,3,7,0,0), false, periods[1])        
        
        # raise exception to test that the block was called
        raise TCTimezoneBlockCalled, 'should be raised'
      }
    }
    
    assert_equal(DateTime.new(2004,10,31,5,30,0), tz.local_to_utc(dt) {|periods| periods.first})
    assert_equal(DateTime.new(2004,10,31,6,30,0), tz.local_to_utc(dt) {|periods| periods.last})
  end
  
  def test_local_to_utc_dst_cannot_resolve
    # At midnight local time on Aug 5 1915 in Warsaw, the clocks were put back
    # 24 minutes and both periods were non-DST. Hence the block should be
    # called regardless of the value of the Boolean dst parameter.
    
    dt = DateTime.new(1915,8,4,23,40,0)
    tz = Timezone.get('Europe/Warsaw')
    
    assert_raise(TCTimezoneBlockCalled) {
      tz.local_to_utc(dt, true) {|periods|
        assert_equal(2, periods.size)
        assert_equal(DateTime.new(1915,8,4,22,36,0), periods[0].utc_end)        
        assert_equal(false, periods[0].dst?)        
        assert_period_for(DateTime.new(1915,8,4,22,36,0), DateTime.new(1916,4,30,22,0,0), false, periods[1])
        
        raise TCTimezoneBlockCalled, 'should be raised'
      }
    }
    
    assert_raise(TCTimezoneBlockCalled) {
      tz.local_to_utc(dt, false) {|periods|
        assert_equal(2, periods.size)
        assert_equal(DateTime.new(1915,8,4,22,36,0), periods[0].utc_end)        
        assert_equal(false, periods[0].dst?)        
        assert_period_for(DateTime.new(1915,8,4,22,36,0), DateTime.new(1916,4,30,22,0,0), false, periods[1])
        
        raise TCTimezoneBlockCalled, 'should be raised'
      }
    }
    
    assert_equal(DateTime.new(1915,8,4,22,16,0), tz.local_to_utc(dt) {|periods| periods.first})
    assert_equal(DateTime.new(1915,8,4,22,40,0), tz.local_to_utc(dt) {|periods| periods.last})
  end
  
  def test_local_to_utc_block_ambiguous
    dt = DateTime.new(2004,10,31,1,30,0)
    tz = Timezone.get('America/New_York')
    
    assert_raise(AmbiguousTime) {
      tz.local_to_utc(dt) {|periods| nil}
    }
    
    assert_raise(AmbiguousTime) {
      tz.local_to_utc(dt) {|periods| periods}
    } 
    
    assert_raise(AmbiguousTime) {
      tz.local_to_utc(dt) {|periods| []}
    }
    
    assert_raise(AmbiguousTime) {
      tz.local_to_utc(dt) {|periods| raise AmbiguousTime, 'Ambiguous time'}
    }
  end
  
  def test_now
    assert_kind_of(Time, Timezone.get('Europe/London').now)
  end
  
  def test_current_period
    assert_kind_of(TimezonePeriod, Timezone.get('Europe/London').current_period)
  end
  
  def test_current_period_and_time
    current = Timezone.get('Europe/London').current_period_and_time
    assert_equal(2, current.length)
    assert_kind_of(Time, current[0])
    assert_kind_of(TimezonePeriod, current[1])
  end
  
  def test_current_time_and_period
    current = Timezone.get('Europe/London').current_time_and_period
    assert_equal(2, current.length)
    assert_kind_of(Time, current[0])
    assert_kind_of(TimezonePeriod, current[1])
  end
  
  def test_equals
    require 'tzinfo/definitions/Europe/London'
    assert(Definitions::Europe::London.new == Definitions::Europe::London.new)
    assert(Definitions::Europe::London.new == Timezone.get('Europe/London'))
    assert(Timezone.get('Europe/London') == Definitions::Europe::London.new)
    assert(Timezone.get('Europe/London') == TimezoneProxy.new('Europe/London'))
    assert(TimezoneProxy.new('Europe/London') == Timezone.get('Europe/London'))
  end
  
  def test_compare
    require 'tzinfo/definitions/Europe/London'
    require 'tzinfo/definitions/Europe/Paris'
    require 'tzinfo/definitions/America/New_York'
    assert_equal(0, Definitions::Europe::London.new <=> Definitions::Europe::London.new)
    assert_equal(0, Timezone.get('Europe/London') <=> Definitions::Europe::London.new)
    assert_equal(0, Definitions::Europe::London.new <=> Timezone.get('Europe/London'))
    assert_equal(0, Timezone.get('Europe/London') <=> Timezone.get('Europe/London'))
    assert((Timezone.get('Europe/London') <=> Timezone.get('Europe/Paris')) < 0)
    assert((Timezone.get('Europe/Paris') <=> Timezone.get('Europe/London')) > 0)
    assert((Timezone.get('America/New_York') <=> Timezone.get('Europe/Paris')) < 0)
    assert((Timezone.get('Europe/Paris') <=> Timezone.get('America/New_York')) > 0)
  end
  
  private
    def assert_period_for(utc_start, utc_end, dst, period)
      assert_equal(utc_start, period.utc_start)
      assert_equal(utc_end, period.utc_end)
      assert_equal(dst, period.dst?)
    end
end
