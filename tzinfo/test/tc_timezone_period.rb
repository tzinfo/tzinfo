$:.unshift File.join(File.dirname(__FILE__), "..", "lib")
require 'test/unit'
require 'tzinfo/timezone'

include TZInfo

class TCTimezonePeriod < Test::Unit::TestCase
  def test_initialize
    p1 = TimezonePeriod.new(DateTime.new(2005,1,1,0,0,0), DateTime.new(2005,1,2,0,0,0), -7200, 3600, :TEST)
    p2 = TimezonePeriod.new(nil, nil, -7200, 3600, :TEST)
    
    assert_equal(DateTime.new(2005,1,1,0,0,0), p1.utc_start)
    assert_equal(DateTime.new(2005,1,2,0,0,0), p1.utc_end)
    assert_equal(-7200, p1.utc_offset)
    assert_equal(3600, p1.std_offset)
    assert_equal(:TEST, p1.zone_identifier)    
    assert_equal(DateTime.new(2004,12,31,23,0,0), p1.local_start)    
    assert_equal(DateTime.new(2005,1,1,23,0,0), p1.local_end)
    
    assert_nil(p2.utc_start)
    assert_nil(p2.utc_end)
    assert_equal(-7200, p2.utc_offset)
    assert_equal(3600, p2.std_offset)
    assert_equal(:TEST, p2.zone_identifier)    
    assert_nil(p2.local_start)    
    assert_nil(p2.local_end)
  end
  
  def test_utc_total_offset
    p1 = TimezonePeriod.new(DateTime.new(2005,1,1,0,0,0), DateTime.new(2005,1,2,0,0,0), -14400, 3600, :TEST)
    p2 = TimezonePeriod.new(DateTime.new(2005,1,1,0,0,0), DateTime.new(2005,1,2,0,0,0), -14400, 0, :TEST)
    p3 = TimezonePeriod.new(DateTime.new(2005,1,1,0,0,0), DateTime.new(2005,1,2,0,0,0), 7200, 3600, :TEST)
    
    assert_equal(-10800, p1.utc_total_offset)
    assert_equal(-14400, p2.utc_total_offset)
    assert_equal(10800, p3.utc_total_offset)
  end
  
  def test_utc_total_offset_rational
    p = TimezonePeriod.new(DateTime.new(2005,1,1,0,0,0), DateTime.new(2005,1,2,0,0,0), -14400, 3600, :TEST)
    
    assert_equal(Rational(-10800, 24 * 60 * 60), p.utc_total_offset_rational)
  end
  
  def test_dst
    p1 = TimezonePeriod.new(DateTime.new(2005,1,1,0,0,0), DateTime.new(2005,1,2,0,0,0), -14400, 3600, :TEST)
    p2 = TimezonePeriod.new(DateTime.new(2005,1,1,0,0,0), DateTime.new(2005,1,2,0,0,0), -14400, 0, :TEST)
    p3 = TimezonePeriod.new(DateTime.new(2005,1,1,0,0,0), DateTime.new(2005,1,2,0,0,0), -14400, -3600, :TEST)
    p4 = TimezonePeriod.new(DateTime.new(2005,1,1,0,0,0), DateTime.new(2005,1,2,0,0,0), -14400, 7200, :TEST)
    p5 = TimezonePeriod.new(DateTime.new(2005,1,1,0,0,0), DateTime.new(2005,1,2,0,0,0), -14400, -7200, :TEST)
    
    assert_equal(true, p1.dst?)
    assert_equal(false, p2.dst?)
    assert_equal(true, p3.dst?)
    assert_equal(true, p4.dst?)
    assert_equal(true, p5.dst?)
  end
  
  def test_valid_for_utc
    p1 = TimezonePeriod.new(DateTime.new(2005,1,1,1,1,1), DateTime.new(2005,2,2,2,2,2), -7200, 3600, :TEST)
    p2 = TimezonePeriod.new(nil, DateTime.new(2005,2,2,2,2,2), -7200, 3600, :TEST)
    p3 = TimezonePeriod.new(DateTime.new(2005,1,1,1,1,1), nil, -7200, 3600, :TEST)
    p4 = TimezonePeriod.new(nil, nil, -7200, 3600, :TEST)
    
    assert_equal(true, p1.valid_for_utc?(DateTime.new(2005,1,1,1,1,1)))
    assert_equal(true, p1.valid_for_utc?(DateTime.new(2005,2,2,2,2,1)))
    assert_equal(true, p1.valid_for_utc?(DateTime.new(2005,1,1,1,1,2)))
    assert_equal(true, p1.valid_for_utc?(DateTime.new(2005,2,2,2,2,0)))
    assert_equal(false, p1.valid_for_utc?(DateTime.new(2005,1,1,1,1,0)))
    assert_equal(false, p1.valid_for_utc?(DateTime.new(2005,2,2,2,2,3)))
    
    assert_equal(true, p2.valid_for_utc?(DateTime.new(2005,1,1,1,1,1)))
    assert_equal(true, p2.valid_for_utc?(DateTime.new(2005,2,2,2,2,1)))
    assert_equal(true, p2.valid_for_utc?(DateTime.new(2005,1,1,1,1,2)))
    assert_equal(true, p2.valid_for_utc?(DateTime.new(2005,2,2,2,2,0)))
    assert_equal(true, p2.valid_for_utc?(DateTime.new(2005,1,1,1,1,0)))
    assert_equal(false, p2.valid_for_utc?(DateTime.new(2005,2,2,2,2,3)))
    
    assert_equal(true, p3.valid_for_utc?(DateTime.new(2005,1,1,1,1,1)))
    assert_equal(true, p3.valid_for_utc?(DateTime.new(2005,2,2,2,2,1)))
    assert_equal(true, p3.valid_for_utc?(DateTime.new(2005,1,1,1,1,2)))
    assert_equal(true, p3.valid_for_utc?(DateTime.new(2005,2,2,2,2,0)))
    assert_equal(false, p3.valid_for_utc?(DateTime.new(2005,1,1,1,1,0)))
    assert_equal(true, p3.valid_for_utc?(DateTime.new(2005,2,2,2,2,3)))
    
    assert_equal(true, p4.valid_for_utc?(DateTime.new(2005,1,1,1,1,1)))
    assert_equal(true, p4.valid_for_utc?(DateTime.new(2005,2,2,2,2,1)))
    assert_equal(true, p4.valid_for_utc?(DateTime.new(2005,1,1,1,1,2)))
    assert_equal(true, p4.valid_for_utc?(DateTime.new(2005,2,2,2,2,0)))
    assert_equal(true, p4.valid_for_utc?(DateTime.new(2005,1,1,1,1,0)))
    assert_equal(true, p4.valid_for_utc?(DateTime.new(2005,2,2,2,2,3)))
  end
  
  def test_utc_after_start
    p1 = TimezonePeriod.new(DateTime.new(2005,1,1,1,1,1), DateTime.new(2005,2,2,2,2,2), -7200, 3600, :TEST)
    p2 = TimezonePeriod.new(nil, DateTime.new(2005,2,2,2,2,2), -7200, 3600, :TEST)

    assert_equal(true, p1.utc_after_start?(DateTime.new(2005,1,1,1,1,1)))    
    assert_equal(true, p1.utc_after_start?(DateTime.new(2005,1,1,1,1,2)))
    assert_equal(false, p1.utc_after_start?(DateTime.new(2005,1,1,1,1,0)))

    assert_equal(true, p2.utc_after_start?(DateTime.new(2005,1,1,1,1,1)))    
    assert_equal(true, p2.utc_after_start?(DateTime.new(2005,1,1,1,1,2)))
    assert_equal(true, p2.utc_after_start?(DateTime.new(2005,1,1,1,1,0)))    
  end
  
  def test_utc_before_end
    p1 = TimezonePeriod.new(DateTime.new(2005,1,1,1,1,1), DateTime.new(2005,2,2,2,2,2), -7200, 3600, :TEST)    
    p2 = TimezonePeriod.new(DateTime.new(2005,1,1,1,1,1), nil, -7200, 3600, :TEST)    
        
    assert_equal(true, p1.utc_before_end?(DateTime.new(2005,2,2,2,2,1)))    
    assert_equal(true, p1.utc_before_end?(DateTime.new(2005,2,2,2,2,0)))   
    assert_equal(false, p1.utc_before_end?(DateTime.new(2005,2,2,2,2,3)))
    
    assert_equal(true, p2.utc_before_end?(DateTime.new(2005,2,2,2,2,1)))    
    assert_equal(true, p2.utc_before_end?(DateTime.new(2005,2,2,2,2,0)))   
    assert_equal(true, p2.utc_before_end?(DateTime.new(2005,2,2,2,2,3)))
  end
  
  def test_valid_for_local
    p1 = TimezonePeriod.new(DateTime.new(2005,1,1,2,1,1), DateTime.new(2005,2,2,3,2,2), -7200, 3600, :TEST)
    p2 = TimezonePeriod.new(nil, DateTime.new(2005,2,2,3,2,2), -7200, 3600, :TEST)
    p3 = TimezonePeriod.new(DateTime.new(2005,1,1,2,1,1), nil, -7200, 3600, :TEST)
    p4 = TimezonePeriod.new(nil, nil, -7200, 3600, :TEST)
    
    assert_equal(true, p1.valid_for_local?(DateTime.new(2005,1,1,1,1,1)))
    assert_equal(true, p1.valid_for_local?(DateTime.new(2005,2,2,2,2,1)))
    assert_equal(true, p1.valid_for_local?(DateTime.new(2005,1,1,1,1,2)))
    assert_equal(true, p1.valid_for_local?(DateTime.new(2005,2,2,2,2,0)))
    assert_equal(false, p1.valid_for_local?(DateTime.new(2005,1,1,1,1,0)))
    assert_equal(false, p1.valid_for_local?(DateTime.new(2005,2,2,2,2,3)))
    
    assert_equal(true, p2.valid_for_local?(DateTime.new(2005,1,1,1,1,1)))
    assert_equal(true, p2.valid_for_local?(DateTime.new(2005,2,2,2,2,1)))
    assert_equal(true, p2.valid_for_local?(DateTime.new(2005,1,1,1,1,2)))
    assert_equal(true, p2.valid_for_local?(DateTime.new(2005,2,2,2,2,0)))
    assert_equal(true, p2.valid_for_local?(DateTime.new(2005,1,1,1,1,0)))
    assert_equal(false, p2.valid_for_local?(DateTime.new(2005,2,2,2,2,3)))
    
    assert_equal(true, p3.valid_for_local?(DateTime.new(2005,1,1,1,1,1)))
    assert_equal(true, p3.valid_for_local?(DateTime.new(2005,2,2,2,2,1)))
    assert_equal(true, p3.valid_for_local?(DateTime.new(2005,1,1,1,1,2)))
    assert_equal(true, p3.valid_for_local?(DateTime.new(2005,2,2,2,2,0)))
    assert_equal(false, p3.valid_for_local?(DateTime.new(2005,1,1,1,1,0)))
    assert_equal(true, p3.valid_for_local?(DateTime.new(2005,2,2,2,2,3)))
    
    assert_equal(true, p4.valid_for_local?(DateTime.new(2005,1,1,1,1,1)))
    assert_equal(true, p4.valid_for_local?(DateTime.new(2005,2,2,2,2,1)))
    assert_equal(true, p4.valid_for_local?(DateTime.new(2005,1,1,1,1,2)))
    assert_equal(true, p4.valid_for_local?(DateTime.new(2005,2,2,2,2,0)))
    assert_equal(true, p4.valid_for_local?(DateTime.new(2005,1,1,1,1,0)))
    assert_equal(true, p4.valid_for_local?(DateTime.new(2005,2,2,2,2,3)))
  end
  
  def test_local_after_start
    p1 = TimezonePeriod.new(DateTime.new(2005,1,1,2,1,1), DateTime.new(2005,2,2,3,2,2), -7200, 3600, :TEST)
    p2 = TimezonePeriod.new(nil, DateTime.new(2005,2,2,3,2,2), -7200, 3600, :TEST)

    assert_equal(true, p1.local_after_start?(DateTime.new(2005,1,1,1,1,1)))    
    assert_equal(true, p1.local_after_start?(DateTime.new(2005,1,1,1,1,2)))
    assert_equal(false, p1.local_after_start?(DateTime.new(2005,1,1,1,1,0)))

    assert_equal(true, p2.local_after_start?(DateTime.new(2005,1,1,1,1,1)))    
    assert_equal(true, p2.local_after_start?(DateTime.new(2005,1,1,1,1,2)))
    assert_equal(true, p2.local_after_start?(DateTime.new(2005,1,1,1,1,0)))    
  end
  
  def test_local_before_end
    p1 = TimezonePeriod.new(DateTime.new(2005,1,1,2,1,1), DateTime.new(2005,2,2,3,2,2), -7200, 3600, :TEST)    
    p2 = TimezonePeriod.new(DateTime.new(2005,1,1,2,1,1), nil, -7200, 3600, :TEST)    
        
    assert_equal(true, p1.local_before_end?(DateTime.new(2005,2,2,2,2,1)))    
    assert_equal(true, p1.local_before_end?(DateTime.new(2005,2,2,2,2,0)))   
    assert_equal(false, p1.local_before_end?(DateTime.new(2005,2,2,2,2,3)))
    
    assert_equal(true, p2.local_before_end?(DateTime.new(2005,2,2,2,2,1)))    
    assert_equal(true, p2.local_before_end?(DateTime.new(2005,2,2,2,2,0)))   
    assert_equal(true, p2.local_before_end?(DateTime.new(2005,2,2,2,2,3)))
  end
  
  def test_to_local
    p1 = TimezonePeriod.new(DateTime.new(2005,1,1,0,0,0), DateTime.new(2005,2,2,0,0,0), -14400, 3600, :TEST)
    p2 = TimezonePeriod.new(DateTime.new(2005,1,1,0,0,0), DateTime.new(2005,2,2,0,0,0), -14400, 0, :TEST)
    p3 = TimezonePeriod.new(DateTime.new(2005,1,1,0,0,0), DateTime.new(2005,2,2,0,0,0), 7200, 3600, :TEST)
        
    assert_equal(DateTime.new(2005,1,19,22,0,0), p1.to_local(DateTime.new(2005,1,20,1,0,0)))
    assert_equal(DateTime.new(2005,1,19,21,0,0), p2.to_local(DateTime.new(2005,1,20,1,0,0)))
    assert_equal(DateTime.new(2005,1,20,4,0,0), p3.to_local(DateTime.new(2005,1,20,1,0,0)))
  end
  
  def test_to_utc
    p1 = TimezonePeriod.new(DateTime.new(2005,1,1,0,0,0), DateTime.new(2005,2,2,0,0,0), -14400, 3600, :TEST)
    p2 = TimezonePeriod.new(DateTime.new(2005,1,1,0,0,0), DateTime.new(2005,2,2,0,0,0), -14400, 0, :TEST)
    p3 = TimezonePeriod.new(DateTime.new(2005,1,1,0,0,0), DateTime.new(2005,2,2,0,0,0), 7200, 3600, :TEST)
        
    assert_equal(DateTime.new(2005,1,20,4,0,0), p1.to_utc(DateTime.new(2005,1,20,1,0,0)))
    assert_equal(DateTime.new(2005,1,20,5,0,0), p2.to_utc(DateTime.new(2005,1,20,1,0,0)))
    assert_equal(DateTime.new(2005,1,19,22,0,0), p3.to_utc(DateTime.new(2005,1,20,1,0,0)))
  end
end