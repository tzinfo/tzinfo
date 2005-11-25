$:.unshift File.join(File.dirname(__FILE__), "..", "lib")
require 'test/unit'
require 'tzinfo/timezone_period_list'

include TZInfo

class TCTimezonePeriod < Test::Unit::TestCase
  def test_add
    # Just a test for no exception
    
    list = TimezonePeriodList.new
    list.add(2005, 1) { TimezonePeriod.new(DateTime.new(2005,1,1,1,0,0), DateTime.new(2005,3,1,1,0,0), 0, 0, :TEST) }
    list.add(2005, 3) { TimezonePeriod.new(DateTime.new(2005,3,1,1,0,0), DateTime.new(2005,5,1,1,0,0), 0, 0, :TEST) }
    list.add(2005, 5) { TimezonePeriod.new(DateTime.new(2005,5,1,1,0,0), DateTime.new(2005,5,2,1,0,0), 0, 0, :TEST) }
    list.add(2005, 5) { TimezonePeriod.new(DateTime.new(2005,5,2,1,0,0), DateTime.new(2005,7,1,1,0,0), 0, 0, :TEST) }
  end
  
  def test_add_incorrect_order
    list = TimezonePeriodList.new
    list.add(2005, 1) { TimezonePeriod.new(DateTime.new(2005,1,1,1,0,0), DateTime.new(2005,2,1,1,0,0), 0, 0, :TEST) }
    list.add(2005, 3) { TimezonePeriod.new(DateTime.new(2005,3,1,1,0,0), DateTime.new(2005,5,1,1,0,0), 0, 0, :TEST) }
      
    assert_raise(ArgumentError) {      
      list.add(2005, 2) { TimezonePeriod.new(DateTime.new(2005,2,1,1,0,0), DateTime.new(2005,3,1,1,0,0), 0, 0, :TEST) }      
    }
  end
  
  def test_period_for_utc
    list = TimezonePeriodList.new
    list.add(2000, 4)  { TimezonePeriod.new(DateTime.new(2000,4,2,7,0,0),DateTime.new(2000,10,29,6,0,0),-18000,3600,:'EDT') }
    list.add(2000, 10) { TimezonePeriod.new(DateTime.new(2000,10,29,6,0,0),DateTime.new(2001,4,1,7,0,0),-18000,0,:'EST') }    
    
    assert_period_equal(list.period_for_utc(DateTime.new(1999,12,1,0,0,0)),
      TimezonePeriod.new(DateTime.new(2000,4,2,7,0,0),DateTime.new(2000,10,29,6,0,0),-18000,3600,:'EDT'))
    assert_period_equal(list.period_for_utc(DateTime.new(2000,3,1,0,0,0)),
      TimezonePeriod.new(DateTime.new(2000,4,2,7,0,0),DateTime.new(2000,10,29,6,0,0),-18000,3600,:'EDT'))
    assert_period_equal(list.period_for_utc(DateTime.new(2000,4,2,7,0,0)),
      TimezonePeriod.new(DateTime.new(2000,4,2,7,0,0),DateTime.new(2000,10,29,6,0,0),-18000,3600,:'EDT'))
    assert_period_equal(list.period_for_utc(DateTime.new(2000,10,29,5,59,59)),
      TimezonePeriod.new(DateTime.new(2000,4,2,7,0,0),DateTime.new(2000,10,29,6,0,0),-18000,3600,:'EDT'))
    assert_period_equal(list.period_for_utc(DateTime.new(2000,10,29,6,0,0)),
      TimezonePeriod.new(DateTime.new(2000,10,29,6,0,0),DateTime.new(2001,4,1,7,0,0),-18000,0,:'EST'))
    assert_period_equal(list.period_for_utc(DateTime.new(2000,12,1,0,0,0)),
      TimezonePeriod.new(DateTime.new(2000,10,29,6,0,0),DateTime.new(2001,4,1,7,0,0),-18000,0,:'EST'))      
  end
  
  def test_period_for_utc_dense
    # test with more than one start in a six month period
  end
  
  def test_period_for_utc_empty
    list = TimezonePeriodList.new
    assert_raise(PeriodNotFound) {
      list.period_for_utc(DateTime.new(2005,1,1,0,0,0))
    }
  end
  
  def test_periods_for_local
  end
  
  def test_periods_for_local_dense
    # test with more than one start in a six month period
  end
  
  private
    def assert_period_equal(expected, actual)
      assert_equal(expected.utc_start, actual.utc_start)
      assert_equal(expected.utc_end, actual.utc_end)
      assert_equal(expected.utc_offset, actual.utc_offset)
      assert_equal(expected.std_offset, actual.std_offset)
      assert_equal(expected.zone_identifier, actual.zone_identifier)    
      assert_equal(expected.local_start, actual.local_start)    
      assert_equal(expected.local_end, actual.local_end)
    end
end
