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
    
    assert_raise(ArgumentError) {      
      list.add(2004, 12) { TimezonePeriod.new(DateTime.new(2004,12,1,1,0,0), DateTime.new(2005,1,1,1,0,0), 0, 0, :TEST) }      
    }
    
    assert_raise(ArgumentError) {
      list.add_unbounded_start { TimezonePeriod.new(nil, DateTime.new(2005,1,1,1,0,0), 0, 0, :TEST) }
    }
  end
  
  def test_add_incorrect_order_unbounded
    list = TimezonePeriodList.new    
    list.add_unbounded_start { TimezonePeriod.new(nil, DateTime.new(2005,1,1,1,0,0), 0, 0, :TEST) }
    
    assert_raise(ArgumentError) {
      list.add_unbounded_start { TimezonePeriod.new(nil, DateTime.new(2005,1,1,1,0,0), 0, 0, :TEST) }
    }
  end
  
  def test_period_for_utc
    list = TimezonePeriodList.new
    list.add(2000, 4)  { TimezonePeriod.new(DateTime.new(2000,4,1,1,0,0),DateTime.new(2000,10,1,1,0,0),-18000,3600,:'TESTD') }
    list.add(2000, 10) { TimezonePeriod.new(DateTime.new(2000,10,1,1,0,0),DateTime.new(2001,3,1,1,0,0),-18000,0,:'TESTS') }    
    list.add(2001, 3)  { TimezonePeriod.new(DateTime.new(2001,3,1,1,0,0),DateTime.new(2001,4,1,1,0,0),-18000,3600,:'TESTD') }
    list.add(2001, 4)  { TimezonePeriod.new(DateTime.new(2001,4,1,1,0,0),DateTime.new(2001,10,1,1,0,0),-21600,3600,:'TESTD') }
    list.add(2001, 10)  { TimezonePeriod.new(DateTime.new(2001,10,1,1,0,0),DateTime.new(2002,10,1,1,0,0),-18000,0,:'TESTS') }
    list.add(2002, 10)  { TimezonePeriod.new(DateTime.new(2002,10,1,1,0,0),DateTime.new(2003,2,1,1,0,0),-18000,0,:'TESTS') }
    
    # TimezonePeriodList expands out blocks and caches the results
    # run twice to ensure this is being done correctly
    2.times {|i|    
      assert_raise(PeriodNotFound) {
        list.period_for_utc(DateTime.new(1999,12,1,0,0,0))
      }
      assert_raise(PeriodNotFound) {
        list.period_for_utc(DateTime.new(2000,4,1,0,59,59))
      }      
      assert_period_equal(TimezonePeriod.new(DateTime.new(2000,4,1,1,0,0),DateTime.new(2000,10,1,1,0,0),-18000,3600,:'TESTD'),
        list.period_for_utc(DateTime.new(2000,4,1,1,0,0)))
      assert_period_equal(TimezonePeriod.new(DateTime.new(2000,4,1,1,0,0),DateTime.new(2000,10,1,1,0,0),-18000,3600,:'TESTD'),
        list.period_for_utc(DateTime.new(2000,10,1,0,59,59)))
      assert_period_equal(TimezonePeriod.new(DateTime.new(2000,10,1,1,0,0),DateTime.new(2001,3,1,1,0,0),-18000,0,:'TESTS'),
        list.period_for_utc(DateTime.new(2000,10,1,1,0,0)))
      assert_period_equal(TimezonePeriod.new(DateTime.new(2000,10,1,1,0,0),DateTime.new(2001,3,1,1,0,0),-18000,0,:'TESTS'),
        list.period_for_utc(DateTime.new(2001,3,1,0,59,59)))
      assert_period_equal(TimezonePeriod.new(DateTime.new(2001,3,1,1,0,0),DateTime.new(2001,4,1,1,0,0),-18000,3600,:'TESTD'),
        list.period_for_utc(DateTime.new(2001,3,1,1,0,0)))
      assert_period_equal(TimezonePeriod.new(DateTime.new(2001,3,1,1,0,0),DateTime.new(2001,4,1,1,0,0),-18000,3600,:'TESTD'),
        list.period_for_utc(DateTime.new(2001,4,1,0,59,59)))
      assert_period_equal(TimezonePeriod.new(DateTime.new(2001,4,1,1,0,0),DateTime.new(2001,10,1,1,0,0),-21600,3600,:'TESTD'),
        list.period_for_utc(DateTime.new(2001,4,1,1,0,0)))
      assert_period_equal(TimezonePeriod.new(DateTime.new(2001,4,1,1,0,0),DateTime.new(2001,10,1,1,0,0),-21600,3600,:'TESTD'),
        list.period_for_utc(DateTime.new(2001,10,1,0,59,59)))
      assert_period_equal(TimezonePeriod.new(DateTime.new(2001,10,1,1,0,0),DateTime.new(2002,10,1,1,0,0),-18000,0,:'TESTS'),
        list.period_for_utc(DateTime.new(2001,10,1,1,0,0)))
      assert_period_equal(TimezonePeriod.new(DateTime.new(2001,10,1,1,0,0),DateTime.new(2002,10,1,1,0,0),-18000,0,:'TESTS'),
        list.period_for_utc(DateTime.new(2002,2,1,1,0,0)))
      assert_period_equal(TimezonePeriod.new(DateTime.new(2001,10,1,1,0,0),DateTime.new(2002,10,1,1,0,0),-18000,0,:'TESTS'),
        list.period_for_utc(DateTime.new(2002,10,1,0,59,59)))
      assert_period_equal(TimezonePeriod.new(DateTime.new(2002,10,1,1,0,0),DateTime.new(2003,2,1,1,0,0),-18000,0,:'TESTS'),
        list.period_for_utc(DateTime.new(2002,10,1,1,0,0)))
      assert_period_equal(TimezonePeriod.new(DateTime.new(2002,10,1,1,0,0),DateTime.new(2003,2,1,1,0,0),-18000,0,:'TESTS'),
        list.period_for_utc(DateTime.new(2003,2,1,0,59,59)))
      
      assert_raise(PeriodNotFound) {
        list.period_for_utc(DateTime.new(2003,2,1,1,0,0))
      }
      assert_raise(PeriodNotFound) {
        list.period_for_utc(DateTime.new(2004,1,1,1,0,0))
      }
    }
  end
  
  def test_period_for_utc_unbounded
    list = TimezonePeriodList.new
    list.add_unbounded_start  { TimezonePeriod.new(nil,DateTime.new(2000,10,1,1,0,0),-18000,3600,:'TESTD') }
    list.add(2000, 10) { TimezonePeriod.new(DateTime.new(2000,10,1,1,0,0),DateTime.new(2001,3,1,1,0,0),-18000,0,:'TESTS') }    
    list.add(2001, 3)  { TimezonePeriod.new(DateTime.new(2001,3,1,1,0,0),nil,-18000,3600,:'TESTD') }
        
    assert_period_equal(TimezonePeriod.new(nil,DateTime.new(2000,10,1,1,0,0),-18000,3600,:'TESTD'),
      list.period_for_utc(DateTime.new(1999,12,1,1,0,0)))
    assert_period_equal(TimezonePeriod.new(nil,DateTime.new(2000,10,1,1,0,0),-18000,3600,:'TESTD'),
      list.period_for_utc(DateTime.new(2000,10,1,0,59,59)))
    assert_period_equal(TimezonePeriod.new(DateTime.new(2000,10,1,1,0,0),DateTime.new(2001,3,1,1,0,0),-18000,0,:'TESTS'),
      list.period_for_utc(DateTime.new(2000,10,1,1,0,0)))
    assert_period_equal(TimezonePeriod.new(DateTime.new(2000,10,1,1,0,0),DateTime.new(2001,3,1,1,0,0),-18000,0,:'TESTS'),
      list.period_for_utc(DateTime.new(2001,3,1,0,59,59)))
    assert_period_equal(TimezonePeriod.new(DateTime.new(2001,3,1,1,0,0),nil,-18000,3600,:'TESTD'),
      list.period_for_utc(DateTime.new(2001,3,1,1,0,0)))
    assert_period_equal(TimezonePeriod.new(DateTime.new(2001,3,1,1,0,0),nil,-18000,3600,:'TESTD'),
      list.period_for_utc(DateTime.new(2002,1,1,1,0,0)))
  end
  
  def test_period_for_utc_gap
    list = TimezonePeriodList.new
    list.add(2000, 4)  { TimezonePeriod.new(DateTime.new(2000,4,1,1,0,0),DateTime.new(2000,5,1,1,0,0),-18000,3600,:'TESTD') }
    list.add(2000, 10) { TimezonePeriod.new(DateTime.new(2000,10,1,1,0,0),DateTime.new(2001,3,1,1,0,0),-18000,0,:'TESTS') }
    
    assert_raise(PeriodNotFound) {
      list.period_for_utc(DateTime.new(2005,5,1,1,0,0))
    }
    
    assert_raise(PeriodNotFound) {
      list.period_for_utc(DateTime.new(2005,10,1,0,59,59))
    }
  end
  
  def test_period_for_utc_empty
    list = TimezonePeriodList.new
    assert_raise(PeriodNotFound) {
      list.period_for_utc(DateTime.new(2005,1,1,0,0,0))
    }
  end
  
  def test_periods_for_local
    list = TimezonePeriodList.new
    list.add(2000, 4)  { TimezonePeriod.new(DateTime.new(2000,4,2,1,0,0),DateTime.new(2000,10,2,1,0,0),-18000,3600,:'TESTD') }
    list.add(2000, 10) { TimezonePeriod.new(DateTime.new(2000,10,2,1,0,0),DateTime.new(2001,3,2,1,0,0),-18000,0,:'TESTS') }    
    list.add(2001, 3)  { TimezonePeriod.new(DateTime.new(2001,3,2,1,0,0),DateTime.new(2001,4,2,1,0,0),-18000,3600,:'TESTD') }
    list.add(2001, 4)  { TimezonePeriod.new(DateTime.new(2001,4,2,1,0,0),DateTime.new(2001,10,2,1,0,0),-21600,3600,:'TESTD') }
    list.add(2001, 10)  { TimezonePeriod.new(DateTime.new(2001,10,2,1,0,0),DateTime.new(2002,10,2,1,0,0),-18000,0,:'TESTS') }
    list.add(2002, 10)  { TimezonePeriod.new(DateTime.new(2002,10,2,1,0,0),DateTime.new(2003,2,2,1,0,0),-18000,0,:'TESTS') }
    
    # TimezonePeriodList expands out blocks and caches the results
    # run twice to ensure this is being done correctly
    2.times {|i|
      assert_raise(PeriodNotFound) {
        list.periods_for_local(DateTime.new(1999,12,1,0,0,0))
      }
      assert_raise(PeriodNotFound) {
        list.periods_for_local(DateTime.new(2000,4,1,20,59,59))
      }
      
      assert_periods_equal([TimezonePeriod.new(DateTime.new(2000,4,2,1,0,0),DateTime.new(2000,10,2,1,0,0),-18000,3600,:'TESTD')],
        list.periods_for_local(DateTime.new(2000,4,1,21,0,0)))
      assert_periods_equal([TimezonePeriod.new(DateTime.new(2000,4,2,1,0,0),DateTime.new(2000,10,2,1,0,0),-18000,3600,:'TESTD')],
        list.periods_for_local(DateTime.new(2000,10,1,19,59,59)))
      assert_periods_equal([TimezonePeriod.new(DateTime.new(2000,4,2,1,0,0),DateTime.new(2000,10,2,1,0,0),-18000,3600,:'TESTD'),
        TimezonePeriod.new(DateTime.new(2000,10,2,1,0,0),DateTime.new(2001,3,2,1,0,0),-18000,0,:'TESTS')],
        list.periods_for_local(DateTime.new(2000,10,1,20,0,0)))
      assert_periods_equal([TimezonePeriod.new(DateTime.new(2000,4,2,1,0,0),DateTime.new(2000,10,2,1,0,0),-18000,3600,:'TESTD'),
        TimezonePeriod.new(DateTime.new(2000,10,2,1,0,0),DateTime.new(2001,3,2,1,0,0),-18000,0,:'TESTS')],
        list.periods_for_local(DateTime.new(2000,10,1,20,59,59)))
      assert_periods_equal([TimezonePeriod.new(DateTime.new(2000,10,2,1,0,0),DateTime.new(2001,3,2,1,0,0),-18000,0,:'TESTS')],
        list.periods_for_local(DateTime.new(2000,10,1,21,0,0)))
      assert_periods_equal([TimezonePeriod.new(DateTime.new(2000,10,2,1,0,0),DateTime.new(2001,3,2,1,0,0),-18000,0,:'TESTS')],
        list.periods_for_local(DateTime.new(2001,3,1,19,59,59)))
        
      assert_raise(PeriodNotFound) {
        list.periods_for_local(DateTime.new(2001,3,1,20,0,0))
      }
      assert_raise(PeriodNotFound) {
        list.periods_for_local(DateTime.new(2001,3,1,20,59,59))
      }
      
      assert_periods_equal([TimezonePeriod.new(DateTime.new(2001,3,2,1,0,0),DateTime.new(2001,4,2,1,0,0),-18000,3600,:'TESTD')],
        list.periods_for_local(DateTime.new(2001,3,1,21,0,0)))
      assert_periods_equal([TimezonePeriod.new(DateTime.new(2001,3,2,1,0,0),DateTime.new(2001,4,2,1,0,0),-18000,3600,:'TESTD')],
        list.periods_for_local(DateTime.new(2001,4,1,19,59,59)))
      assert_periods_equal([TimezonePeriod.new(DateTime.new(2001,3,2,1,0,0),DateTime.new(2001,4,2,1,0,0),-18000,3600,:'TESTD'),
        TimezonePeriod.new(DateTime.new(2001,4,2,1,0,0),DateTime.new(2001,10,2,1,0,0),-21600,3600,:'TESTD')],
        list.periods_for_local(DateTime.new(2001,4,1,20,0,0)))
      assert_periods_equal([TimezonePeriod.new(DateTime.new(2001,3,2,1,0,0),DateTime.new(2001,4,2,1,0,0),-18000,3600,:'TESTD'),
        TimezonePeriod.new(DateTime.new(2001,4,2,1,0,0),DateTime.new(2001,10,2,1,0,0),-21600,3600,:'TESTD')],
        list.periods_for_local(DateTime.new(2001,4,1,20,59,59)))
      assert_periods_equal([TimezonePeriod.new(DateTime.new(2001,4,2,1,0,0),DateTime.new(2001,10,2,1,0,0),-21600,3600,:'TESTD')],
        list.periods_for_local(DateTime.new(2001,4,1,21,0,0)))
      assert_periods_equal([TimezonePeriod.new(DateTime.new(2001,4,2,1,0,0),DateTime.new(2001,10,2,1,0,0),-21600,3600,:'TESTD')],
        list.periods_for_local(DateTime.new(2001,10,1,19,59,59)))
      assert_periods_equal([TimezonePeriod.new(DateTime.new(2001,10,2,1,0,0),DateTime.new(2002,10,2,1,0,0),-18000,0,:'TESTS')],
        list.periods_for_local(DateTime.new(2001,10,1,20,0,0)))
      assert_periods_equal([TimezonePeriod.new(DateTime.new(2001,10,2,1,0,0),DateTime.new(2002,10,2,1,0,0),-18000,0,:'TESTS')],
        list.periods_for_local(DateTime.new(2002,2,1,20,0,0)))
      assert_periods_equal([TimezonePeriod.new(DateTime.new(2001,10,2,1,0,0),DateTime.new(2002,10,2,1,0,0),-18000,0,:'TESTS')],
        list.periods_for_local(DateTime.new(2002,10,1,19,59,59)))
      assert_periods_equal([TimezonePeriod.new(DateTime.new(2002,10,2,1,0,0),DateTime.new(2003,2,2,1,0,0),-18000,0,:'TESTS')],
        list.periods_for_local(DateTime.new(2002,10,1,20,0,0)))
      assert_periods_equal([TimezonePeriod.new(DateTime.new(2002,10,2,1,0,0),DateTime.new(2003,2,2,1,0,0),-18000,0,:'TESTS')],
        list.periods_for_local(DateTime.new(2003,2,1,19,59,59)))
        
      assert_raise(PeriodNotFound) {
        list.periods_for_local(DateTime.new(2003,2,1,20,0,0))
      }
      assert_raise(PeriodNotFound) {
        list.periods_for_local(DateTime.new(2004,1,1,20,0,0))
      }  
    }
  end
  
  def test_period_for_local_unbounded
    list = TimezonePeriodList.new
    list.add_unbounded_start  { TimezonePeriod.new(nil,DateTime.new(2000,10,2,1,0,0),-18000,3600,:'TESTD') }
    list.add(2000, 10) { TimezonePeriod.new(DateTime.new(2000,10,2,1,0,0),DateTime.new(2001,3,2,1,0,0),-18000,0,:'TESTS') }    
    list.add(2001, 3)  { TimezonePeriod.new(DateTime.new(2001,3,2,1,0,0),nil,-18000,3600,:'TESTD') }
        
    assert_periods_equal([TimezonePeriod.new(nil,DateTime.new(2000,10,2,1,0,0),-18000,3600,:'TESTD')],
      list.periods_for_local(DateTime.new(1999,12,1,1,0,0)))
    assert_periods_equal([TimezonePeriod.new(nil,DateTime.new(2000,10,2,1,0,0),-18000,3600,:'TESTD')],
      list.periods_for_local(DateTime.new(2000,10,1,20,59,59)))
    assert_periods_equal([TimezonePeriod.new(nil,DateTime.new(2000,10,2,1,0,0),-18000,3600,:'TESTD')],
      list.periods_for_local(DateTime.new(2000,10,1,19,59,59)))
    assert_periods_equal([TimezonePeriod.new(nil,DateTime.new(2000,10,2,1,0,0),-18000,3600,:'TESTD'),
      TimezonePeriod.new(DateTime.new(2000,10,2,1,0,0),DateTime.new(2001,3,2,1,0,0),-18000,0,:'TESTS')],
      list.periods_for_local(DateTime.new(2000,10,1,20,0,0)))
    assert_periods_equal([TimezonePeriod.new(nil,DateTime.new(2000,10,2,1,0,0),-18000,3600,:'TESTD'),
      TimezonePeriod.new(DateTime.new(2000,10,2,1,0,0),DateTime.new(2001,3,2,1,0,0),-18000,0,:'TESTS')],
      list.periods_for_local(DateTime.new(2000,10,1,20,59,59)))       
    assert_periods_equal([TimezonePeriod.new(DateTime.new(2000,10,2,1,0,0),DateTime.new(2001,3,2,1,0,0),-18000,0,:'TESTS')],
      list.periods_for_local(DateTime.new(2000,10,1,21,0,0)))
    assert_periods_equal([TimezonePeriod.new(DateTime.new(2000,10,2,1,0,0),DateTime.new(2001,3,2,1,0,0),-18000,0,:'TESTS')],
      list.periods_for_local(DateTime.new(2001,3,1,19,59,59)))
    assert_periods_equal([TimezonePeriod.new(DateTime.new(2000,10,2,1,0,0),DateTime.new(2001,3,2,1,0,0),-18000,0,:'TESTS')],
      list.periods_for_local(DateTime.new(2001,3,1,19,59,59)))
      
    assert_raise(PeriodNotFound) {
      list.periods_for_local(DateTime.new(2001,3,1,20,0,0))
    }
    assert_raise(PeriodNotFound) {
      list.periods_for_local(DateTime.new(2001,3,1,20,59,59))
    }
    
    assert_periods_equal([TimezonePeriod.new(DateTime.new(2001,3,2,1,0,0),nil,-18000,3600,:'TESTD')],
      list.periods_for_local(DateTime.new(2001,3,1,21,0,0)))
    assert_periods_equal([TimezonePeriod.new(DateTime.new(2001,3,2,1,0,0),nil,-18000,3600,:'TESTD')],
      list.periods_for_local(DateTime.new(2002,1,1,21,0,0)))
  end
  
  def test_period_for_local_unbounded
    list = TimezonePeriodList.new
    list.add_unbounded_start  { TimezonePeriod.new(nil,DateTime.new(2000,7,1,0,0,0),-3600,0,:'TESTD') }
    list.add(2000, 7) { TimezonePeriod.new(DateTime.new(2000,7,1,0,0,0),nil,-3600,0,:'TESTS') }    
    
    # 2000-07-01 00:00:00 UTC is 2000-06-30 23:00:00 UTC-1
    # hence to find periods for local times between 2000-06-30 23:00:00
    # and 2000-07-01 00:00:00 a search has to be carried out in the next half
    # year to the one containing the date we are looking for
    
    assert_periods_equal([TimezonePeriod.new(nil,DateTime.new(2000,7,1,0,0,0),-3600,0,:'TESTD')],
      list.periods_for_local(DateTime.new(2000,6,30,22,59,59)))
    assert_periods_equal([TimezonePeriod.new(DateTime.new(2000,7,1,0,0,0),nil,-3600,0,:'TESTS')],
      list.periods_for_local(DateTime.new(2000,6,30,23,0,0)))
    assert_periods_equal([TimezonePeriod.new(DateTime.new(2000,7,1,0,0,0),nil,-3600,0,:'TESTS')],
      list.periods_for_local(DateTime.new(2000,7,1,0,0,0)))
  end
  
  def test_unbounded_start_only
    list = TimezonePeriodList.new
    list.add_unbounded_start { TimezonePeriod.new(nil,nil,0,0,:'UTC') }
    
    assert_period_equal(TimezonePeriod.new(nil,nil,0,0,:'UTC'), 
      list.period_for_utc(DateTime.new(2000,1,1,0,0,0)))
    assert_periods_equal([TimezonePeriod.new(nil,nil,0,0,:'UTC')],
      list.periods_for_local(DateTime.new(2000,1,1,0,0,0)))
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
    
    def assert_periods_equal(expected, actual)     
      assert_equal(expected.length, actual.length)
      (0..expected.length - 1).each {|i|
        assert_period_equal(expected[i], actual[i])
      }
    end
end
