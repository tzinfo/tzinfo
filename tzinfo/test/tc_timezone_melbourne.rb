$:.unshift File.join(File.dirname(__FILE__), "..", "lib")
require 'test/unit'
require 'tzinfo/timezone'

include TZInfo

class TCTimezoneMelbourne < Test::Unit::TestCase
  def test_2004
    #Australia/Melbourne  Sat Mar 27 15:59:59 2004 UTC = Sun Mar 28 02:59:59 2004 EST isdst=1 gmtoff=39600
    #Australia/Melbourne  Sat Mar 27 16:00:00 2004 UTC = Sun Mar 28 02:00:00 2004 EST isdst=0 gmtoff=36000
    #Australia/Melbourne  Sat Oct 30 15:59:59 2004 UTC = Sun Oct 31 01:59:59 2004 EST isdst=0 gmtoff=36000
    #Australia/Melbourne  Sat Oct 30 16:00:00 2004 UTC = Sun Oct 31 03:00:00 2004 EST isdst=1 gmtoff=39600
    
    tz = Timezone.get('Australia/Melbourne')
    assert_equal(DateTime.new(2004,3,28,2,59,59), tz.utc_to_local(DateTime.new(2004,3,27,15,59,59)))
    assert_equal(DateTime.new(2004,3,28,2,0,0), tz.utc_to_local(DateTime.new(2004,3,27,16,0,0)))    
    assert_equal(DateTime.new(2004,10,31,1,59,59), tz.utc_to_local(DateTime.new(2004,10,30,15,59,59)))
    assert_equal(DateTime.new(2004,10,31,3,0,0), tz.utc_to_local(DateTime.new(2004,10,30,16,0,0)))
    
    assert_equal(DateTime.new(2004,3,27,15,59,59), tz.local_to_utc(DateTime.new(2004,3,28,2,59,59)))
    assert_equal(DateTime.new(2004,3,27,15,0,0), tz.local_to_utc(DateTime.new(2004,3,28,2,0,0))) # returns first possible utc time
    assert_equal(DateTime.new(2004,10,30,15,59,59), tz.local_to_utc(DateTime.new(2004,10,31,1,59,59)))
    assert_equal(DateTime.new(2004,10,30,16,0,0), tz.local_to_utc(DateTime.new(2004,10,31,3,0,0)))
    
    assert_raise(PeriodNotFound) { tz.local_to_utc(DateTime.new(2004,10,31,2,0,0)) }
    
    assert_equal(:EST, tz.period_for_utc(DateTime.new(2004,3,27,15,59,59)).zone_identifier)
    assert_equal(:EST, tz.period_for_utc(DateTime.new(2004,3,27,16,0,0)).zone_identifier)
    assert_equal(:EST, tz.period_for_utc(DateTime.new(2004,10,30,15,59,59)).zone_identifier)
    assert_equal(:EST, tz.period_for_utc(DateTime.new(2004,10,30,16,0,0)).zone_identifier)
    
    assert_equal(:EST, tz.period_for_local(DateTime.new(2004,3,28,2,59,59)).zone_identifier)
    assert_equal(:EST, tz.period_for_local(DateTime.new(2004,3,28,2,0,0)).zone_identifier)
    assert_equal(:EST, tz.period_for_local(DateTime.new(2004,10,31,1,59,59)).zone_identifier)
    assert_equal(:EST, tz.period_for_local(DateTime.new(2004,10,31,3,0,0)).zone_identifier)
    
    assert_equal(39600, tz.period_for_utc(DateTime.new(2004,3,27,15,59,59)).utc_total_offset)
    assert_equal(36000, tz.period_for_utc(DateTime.new(2004,3,27,16,0,0)).utc_total_offset)
    assert_equal(36000, tz.period_for_utc(DateTime.new(2004,10,30,15,59,59)).utc_total_offset)
    assert_equal(39600, tz.period_for_utc(DateTime.new(2004,10,30,16,0,0)).utc_total_offset)
    
    assert_equal(39600, tz.period_for_local(DateTime.new(2004,3,28,2,59,59)).utc_total_offset)
    assert_equal(39600, tz.period_for_local(DateTime.new(2004,3,28,2,0,0)).utc_total_offset)
    assert_equal(36000, tz.period_for_local(DateTime.new(2004,10,31,1,59,59)).utc_total_offset)
    assert_equal(39600, tz.period_for_local(DateTime.new(2004,10,31,3,0,0)).utc_total_offset)
  end    
end