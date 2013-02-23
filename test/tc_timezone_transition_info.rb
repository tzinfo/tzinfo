require File.join(File.expand_path(File.dirname(__FILE__)), 'test_utils')
require 'date'

include TZInfo

class TCTimezoneTransitionInfo < Test::Unit::TestCase
  
  def test_initialize_timestamp_only
    assert_nothing_raised do
      TimezoneTransitionInfo.new(TimezoneOffsetInfo.new(3600, 3600, :TDT),
        TimezoneOffsetInfo.new(3600, 0, :TST), 1148949080)
    end
  end
  
  def test_initialize_timestamp_and_datetime
    assert_nothing_raised do
      TimezoneTransitionInfo.new(TimezoneOffsetInfo.new(3600, 3600, :TDT),
        TimezoneOffsetInfo.new(3600, 0, :TST), 1148949080, 5300392727, 2160)
    end
  end
  
  def test_initialize_datetime_only
    assert_nothing_raised do
      TimezoneTransitionInfo.new(TimezoneOffsetInfo.new(3600, 3600, :TDT),
        TimezoneOffsetInfo.new(3600, 0, :TST), 5300392727, 2160)
    end
  end
   
  def test_offset
    t = TimezoneTransitionInfo.new(TimezoneOffsetInfo.new(3600, 3600, :TDT),
      TimezoneOffsetInfo.new(3600, 0, :TST), 1148949080)
    
    assert_equal(TimezoneOffsetInfo.new(3600, 3600, :TDT), t.offset)
  end
  
  def test_previous_offset
    t = TimezoneTransitionInfo.new(TimezoneOffsetInfo.new(3600, 3600, :TDT),
      TimezoneOffsetInfo.new(3600, 0, :TST), 1148949080)
    
    assert_equal(TimezoneOffsetInfo.new(3600, 0, :TST), t.previous_offset)
  end
  
  def test_at
    t1 = TimezoneTransitionInfo.new(TimezoneOffsetInfo.new(3600, 3600, :TDT),
      TimezoneOffsetInfo.new(3600, 0, :TST), 1148949080)
    t2 = TimezoneTransitionInfo.new(TimezoneOffsetInfo.new(3600, 3600, :TDT),
      TimezoneOffsetInfo.new(3600, 0, :TST), 5300392727, 2160)
    t3 = TimezoneTransitionInfo.new(TimezoneOffsetInfo.new(3600, 3600, :TDT),
      TimezoneOffsetInfo.new(3600, 0, :TST), 1148949080, 5300392727, 2160)
      
    assert(TimeOrDateTime.new(1148949080).eql?(t1.at))
    assert(TimeOrDateTime.new(DateTime.new(2006, 5, 30, 0, 31, 20)).eql?(t2.at))
    assert(TimeOrDateTime.new(1148949080).eql?(t3.at))
  end
  
  def test_local_end
    t1 = TimezoneTransitionInfo.new(TimezoneOffsetInfo.new(3600, 3600, :TDT),
      TimezoneOffsetInfo.new(3600, 0, :TST), 1148949080)
    t2 = TimezoneTransitionInfo.new(TimezoneOffsetInfo.new(3600, 3600, :TDT),
      TimezoneOffsetInfo.new(3600, 0, :TST), 5300392727, 2160)
    t3 = TimezoneTransitionInfo.new(TimezoneOffsetInfo.new(3600, 3600, :TDT),
      TimezoneOffsetInfo.new(3600, 0, :TST), 1148949080, 5300392727, 2160)
      
    assert(TimeOrDateTime.new(1148952680).eql?(t1.local_end))
    assert(TimeOrDateTime.new(DateTime.new(2006, 5, 30, 1, 31, 20)).eql?(t2.local_end))
    assert(TimeOrDateTime.new(1148952680).eql?(t3.local_end))
  end
  
  def test_local_start
    t1 = TimezoneTransitionInfo.new(TimezoneOffsetInfo.new(3600, 3600, :TDT),
      TimezoneOffsetInfo.new(3600, 0, :TST), 1148949080)
    t2 = TimezoneTransitionInfo.new(TimezoneOffsetInfo.new(3600, 3600, :TDT),
      TimezoneOffsetInfo.new(3600, 0, :TST), 5300392727, 2160)
    t3 = TimezoneTransitionInfo.new(TimezoneOffsetInfo.new(3600, 3600, :TDT),
      TimezoneOffsetInfo.new(3600, 0, :TST), 1148949080, 5300392727, 2160)
      
    assert(TimeOrDateTime.new(1148956280).eql?(t1.local_start))
    assert(TimeOrDateTime.new(DateTime.new(2006, 5, 30, 2, 31, 20)).eql?(t2.local_start))
    assert(TimeOrDateTime.new(1148956280).eql?(t3.local_start))
  end
  
  def test_at_before_negative_32_bit
    t = TimezoneTransitionInfo.new(TimezoneOffsetInfo.new(3600, 3600, :TDT),
      TimezoneOffsetInfo.new(3600, 0, :TST), -2147483649, 69573092117, 28800)
      
    if RubyCoreSupport.time_supports_negative && RubyCoreSupport.time_supports_64bit
      assert(TimeOrDateTime.new(-2147483649).eql?(t.at))
    else
      assert(TimeOrDateTime.new(DateTime.new(1901, 12, 13, 20, 45, 51)).eql?(t.at))
    end
  end
  
  def test_local_end_before_negative_32bit
    t = TimezoneTransitionInfo.new(TimezoneOffsetInfo.new(-7200, 3600, :TDT),
      TimezoneOffsetInfo.new(-7200, 0, :TST), -2147482800, 19325859, 8)
      
    if RubyCoreSupport.time_supports_negative && RubyCoreSupport.time_supports_64bit
      assert(TimeOrDateTime.new(-2147490000).eql?(t.local_end))
    else
      assert(TimeOrDateTime.new(DateTime.new(1901, 12, 13, 19, 0, 0)).eql?(t.local_end))
    end
  end
  
  def test_local_start_before_negative_32bit
    t = TimezoneTransitionInfo.new(TimezoneOffsetInfo.new(-7200, 3600, :TDT),
      TimezoneOffsetInfo.new(-7200, 0, :TST), -2147482800, 19325859, 8)
      
    if RubyCoreSupport.time_supports_negative && RubyCoreSupport.time_supports_64bit
      assert(TimeOrDateTime.new(-2147486400).eql?(t.local_start))
    else
      assert(TimeOrDateTime.new(DateTime.new(1901, 12, 13, 20, 0, 0)).eql?(t.local_start))
    end
  end
  
  def test_at_before_epoch
    t = TimezoneTransitionInfo.new(TimezoneOffsetInfo.new(3600, 3600, :TDT),
      TimezoneOffsetInfo.new(3600, 0, :TST), -1, 210866759999, 86400)
      
    if RubyCoreSupport.time_supports_negative
      assert(TimeOrDateTime.new(-1).eql?(t.at))
    else
      assert(TimeOrDateTime.new(DateTime.new(1969, 12, 31, 23, 59, 59)).eql?(t.at))
    end
  end
  
  def test_local_end_before_epoch
    t = TimezoneTransitionInfo.new(TimezoneOffsetInfo.new(-7200, 3600, :TDT),
      TimezoneOffsetInfo.new(-7200, 0, :TST), 1800, 39049401, 16)
      
    if RubyCoreSupport.time_supports_negative
      assert(TimeOrDateTime.new(-5400).eql?(t.local_end))
    else
      assert(TimeOrDateTime.new(DateTime.new(1969, 12, 31, 22, 30, 0)).eql?(t.local_end))
    end
  end
  
  def test_local_start_before_epoch
    t = TimezoneTransitionInfo.new(TimezoneOffsetInfo.new(-7200, 3600, :TDT),
      TimezoneOffsetInfo.new(-7200, 0, :TST), 1800, 39049401, 16)
    
    if RubyCoreSupport.time_supports_negative
      assert(TimeOrDateTime.new(-1800).eql?(t.local_start))
    else
      assert(TimeOrDateTime.new(DateTime.new(1969, 12, 31, 23, 30, 0)).eql?(t.local_start))
    end
  end
  
  def test_at_after_32bit
    t = TimezoneTransitionInfo.new(TimezoneOffsetInfo.new(3600, 3600, :TDT),
      TimezoneOffsetInfo.new(3600, 0, :TST), 2147483648, 3328347557, 1350)
      
    if RubyCoreSupport.time_supports_64bit
      assert(TimeOrDateTime.new(2147483648).eql?(t.at))
    else
      assert(TimeOrDateTime.new(DateTime.new(2038, 1, 19, 3, 14, 8)).eql?(t.at))
    end
  end
  
  def test_local_end_after_32bit
    t = TimezoneTransitionInfo.new(TimezoneOffsetInfo.new(3600, 3600, :TDT),
      TimezoneOffsetInfo.new(3600, 0, :TST), 2147482800, 19723541, 8)
      
    if RubyCoreSupport.time_supports_64bit
      assert(TimeOrDateTime.new(2147486400).eql?(t.local_end))
    else
      assert(TimeOrDateTime.new(DateTime.new(2038, 1, 19, 4, 0, 0)).eql?(t.local_end))
    end
  end
  
  def test_local_start_after_32bit
    t = TimezoneTransitionInfo.new(TimezoneOffsetInfo.new(3600, 3600, :TDT),
      TimezoneOffsetInfo.new(3600, 0, :TST), 2147482800, 19723541, 8)
      
    if RubyCoreSupport.time_supports_64bit
      assert(TimeOrDateTime.new(2147490000).eql?(t.local_start))
    else    
      assert(TimeOrDateTime.new(DateTime.new(2038, 1, 19, 5, 0, 0)).eql?(t.local_start))
    end
  end
  
  def test_equality_timestamp
    t1 = TimezoneTransitionInfo.new(TimezoneOffsetInfo.new(3600, 3600, :TDT),
      TimezoneOffsetInfo.new(3600, 0, :TST), 1148949080)
    t2 = TimezoneTransitionInfo.new(TimezoneOffsetInfo.new(3600, 3600, :TDT),
      TimezoneOffsetInfo.new(3600, 0, :TST), 1148949080)
    t3 = TimezoneTransitionInfo.new(TimezoneOffsetInfo.new(3600, 3600, :TDT),
      TimezoneOffsetInfo.new(3600, 0, :TST), 5300392727, 2160)
    t4 = TimezoneTransitionInfo.new(TimezoneOffsetInfo.new(3600, 3600, :TDT),
      TimezoneOffsetInfo.new(3600, 0, :TST), 1148949080, 5300392727, 2160)
    t5 = TimezoneTransitionInfo.new(TimezoneOffsetInfo.new(3600, 3600, :TDT),
      TimezoneOffsetInfo.new(3600, 0, :TST), 1148949081)
    t6 = TimezoneTransitionInfo.new(TimezoneOffsetInfo.new(3600, 3600, :TDT),
      TimezoneOffsetInfo.new(3600, 0, :TST), 7852433803, 3200)
    t7 = TimezoneTransitionInfo.new(TimezoneOffsetInfo.new(3601, 3600, :TDT),
      TimezoneOffsetInfo.new(3600, 0, :TST), 1148949080) 
    t8 = TimezoneTransitionInfo.new(TimezoneOffsetInfo.new(3600, 3600, :TDT),
      TimezoneOffsetInfo.new(3601, 0, :TST), 1148949080)
      
    assert_equal(true, t1 == t1)
    assert_equal(true, t1 == t2)
    assert_equal(true, t1 == t3)
    assert_equal(true, t1 == t4)
    assert_equal(false, t1 == t5)
    assert_equal(false, t1 == t6)
    assert_equal(false, t1 == t7)
    assert_equal(false, t1 == t8)
    assert_equal(false, t1 == Object.new)
  end
  
  def test_equality_datetime
    t1 = TimezoneTransitionInfo.new(TimezoneOffsetInfo.new(3600, 3600, :TDT),
      TimezoneOffsetInfo.new(3600, 0, :TST), 5300392727, 2160)
    t2 = TimezoneTransitionInfo.new(TimezoneOffsetInfo.new(3600, 3600, :TDT),
      TimezoneOffsetInfo.new(3600, 0, :TST), 5300392727, 2160)
    t3 = TimezoneTransitionInfo.new(TimezoneOffsetInfo.new(3600, 3600, :TDT),
      TimezoneOffsetInfo.new(3600, 0, :TST), 1148949080)
    t4 = TimezoneTransitionInfo.new(TimezoneOffsetInfo.new(3600, 3600, :TDT),
      TimezoneOffsetInfo.new(3600, 0, :TST), 1148949080, 5300392727, 2160)
    t5 = TimezoneTransitionInfo.new(TimezoneOffsetInfo.new(3600, 3600, :TDT),
      TimezoneOffsetInfo.new(3600, 0, :TST), 7852433803, 3200)
    t6 = TimezoneTransitionInfo.new(TimezoneOffsetInfo.new(3600, 3600, :TDT),
      TimezoneOffsetInfo.new(3600, 0, :TST), 1148949081)
    t7 = TimezoneTransitionInfo.new(TimezoneOffsetInfo.new(3601, 3600, :TDT),
      TimezoneOffsetInfo.new(3600, 0, :TST), 5300392727, 2160) 
    t8 = TimezoneTransitionInfo.new(TimezoneOffsetInfo.new(3600, 3600, :TDT),
      TimezoneOffsetInfo.new(3601, 0, :TST), 5300392727, 2160)
      
    assert_equal(true, t1 == t1)
    assert_equal(true, t1 == t2)
    assert_equal(true, t1 == t3)
    assert_equal(true, t1 == t4)
    assert_equal(false, t1 == t5)
    assert_equal(false, t1 == t6)
    assert_equal(false, t1 == t7)
    assert_equal(false, t1 == t8)
    assert_equal(false, t1 == Object.new)
  end
  
  def test_eql_timestamp
    t1 = TimezoneTransitionInfo.new(TimezoneOffsetInfo.new(3600, 3600, :TDT),
      TimezoneOffsetInfo.new(3600, 0, :TST), 1148949080)
    t2 = TimezoneTransitionInfo.new(TimezoneOffsetInfo.new(3600, 3600, :TDT),
      TimezoneOffsetInfo.new(3600, 0, :TST), 1148949080)
    t3 = TimezoneTransitionInfo.new(TimezoneOffsetInfo.new(3600, 3600, :TDT),
      TimezoneOffsetInfo.new(3600, 0, :TST), 5300392727, 2160)
    t4 = TimezoneTransitionInfo.new(TimezoneOffsetInfo.new(3600, 3600, :TDT),
      TimezoneOffsetInfo.new(3600, 0, :TST), 1148949080, 5300392727, 2160)
    t5 = TimezoneTransitionInfo.new(TimezoneOffsetInfo.new(3600, 3600, :TDT),
      TimezoneOffsetInfo.new(3600, 0, :TST), 1148949081)
    t6 = TimezoneTransitionInfo.new(TimezoneOffsetInfo.new(3601, 3600, :TDT),
      TimezoneOffsetInfo.new(3600, 0, :TST), 1148949080) 
    t7 = TimezoneTransitionInfo.new(TimezoneOffsetInfo.new(3600, 3600, :TDT),
      TimezoneOffsetInfo.new(3601, 0, :TST), 1148949080)
      
    assert_equal(true, t1.eql?(t1))
    assert_equal(true, t1.eql?(t2))
    assert_equal(false, t1.eql?(t3))
    assert_equal(true, t1.eql?(t4))
    assert_equal(false, t1.eql?(t5))
    assert_equal(false, t1.eql?(t6))
    assert_equal(false, t1.eql?(t7))    
    assert_equal(false, t1.eql?(Object.new))
  end
  
  def test_eql_datetime
    t1 = TimezoneTransitionInfo.new(TimezoneOffsetInfo.new(3600, 3600, :TDT),
      TimezoneOffsetInfo.new(3600, 0, :TST), 5300392727, 2160)
    t2 = TimezoneTransitionInfo.new(TimezoneOffsetInfo.new(3600, 3600, :TDT),
      TimezoneOffsetInfo.new(3600, 0, :TST), 5300392727, 2160)
    t3 = TimezoneTransitionInfo.new(TimezoneOffsetInfo.new(3600, 3600, :TDT),    
      TimezoneOffsetInfo.new(3600, 0, :TST), 1148949080)
    t4 = TimezoneTransitionInfo.new(TimezoneOffsetInfo.new(3600, 3600, :TDT),
      TimezoneOffsetInfo.new(3600, 0, :TST), 1148949080, 5300392727, 2160)
    t5 = TimezoneTransitionInfo.new(TimezoneOffsetInfo.new(3600, 3600, :TDT),
      TimezoneOffsetInfo.new(3600, 0, :TST), 7852433803, 3200)
    t6 = TimezoneTransitionInfo.new(TimezoneOffsetInfo.new(3601, 3600, :TDT),
      TimezoneOffsetInfo.new(3600, 0, :TST), 5300392727, 2160) 
    t7 = TimezoneTransitionInfo.new(TimezoneOffsetInfo.new(3600, 3600, :TDT),
      TimezoneOffsetInfo.new(3601, 0, :TST), 5300392727, 2160)
      
    assert_equal(true, t1.eql?(t1))
    assert_equal(true, t1.eql?(t2))
    assert_equal(false, t1.eql?(t3))
    assert_equal(false, t1.eql?(t4))
    assert_equal(false, t1.eql?(t5))
    assert_equal(false, t1.eql?(t6))
    assert_equal(false, t1.eql?(t7))    
    assert_equal(false, t1.eql?(Object.new))
  end
  
  def test_eql_timestamp_and_datetime
    t1 = TimezoneTransitionInfo.new(TimezoneOffsetInfo.new(3600, 3600, :TDT),
      TimezoneOffsetInfo.new(3600, 0, :TST), 1148949080, 5300392727, 2160)
    t2 = TimezoneTransitionInfo.new(TimezoneOffsetInfo.new(3600, 3600, :TDT),
      TimezoneOffsetInfo.new(3600, 0, :TST), 1148949080, 5300392727, 2160)
    t3 = TimezoneTransitionInfo.new(TimezoneOffsetInfo.new(3600, 3600, :TDT),    
      TimezoneOffsetInfo.new(3600, 0, :TST), 1148949080)
    t4 = TimezoneTransitionInfo.new(TimezoneOffsetInfo.new(3600, 3600, :TDT),
      TimezoneOffsetInfo.new(3600, 0, :TST), 5300392727, 2160)
    t5 = TimezoneTransitionInfo.new(TimezoneOffsetInfo.new(3600, 3600, :TDT),
      TimezoneOffsetInfo.new(3600, 0, :TST), 1148952681, 7852433803, 3200)
    t6 = TimezoneTransitionInfo.new(TimezoneOffsetInfo.new(3601, 3600, :TDT),
      TimezoneOffsetInfo.new(3600, 0, :TST), 1148949080, 5300392727, 2160) 
    t7 = TimezoneTransitionInfo.new(TimezoneOffsetInfo.new(3600, 3600, :TDT),
      TimezoneOffsetInfo.new(3601, 0, :TST), 1148949080, 5300392727, 2160)
      
    assert_equal(true, t1.eql?(t1))
    assert_equal(true, t1.eql?(t2))
    assert_equal(true, t1.eql?(t3))
    assert_equal(false, t1.eql?(t4))
    assert_equal(false, t1.eql?(t5))
    assert_equal(false, t1.eql?(t6))
    assert_equal(false, t1.eql?(t7))    
    assert_equal(false, t1.eql?(Object.new))
  end

  def test_eql_timestamp_and_datetime_before_negative_32bit
    t1 = TimezoneTransitionInfo.new(TimezoneOffsetInfo.new(3600, 3600, :TDT),
      TimezoneOffsetInfo.new(3600, 0, :TST), -2147483649, 69573092117, 28800)
    t2 = TimezoneTransitionInfo.new(TimezoneOffsetInfo.new(3600, 3600, :TDT),
      TimezoneOffsetInfo.new(3600, 0, :TST), -2147483649, 69573092117, 28800)
    t3 = TimezoneTransitionInfo.new(TimezoneOffsetInfo.new(3600, 3600, :TDT),    
      TimezoneOffsetInfo.new(3600, 0, :TST), -2147483649)
    t4 = TimezoneTransitionInfo.new(TimezoneOffsetInfo.new(3600, 3600, :TDT),
      TimezoneOffsetInfo.new(3600, 0, :TST), 69573092117, 28800)
      
    assert_equal(true, t1.eql?(t1))
    assert_equal(true, t1.eql?(t2))
    
    if RubyCoreSupport.time_supports_negative && RubyCoreSupport.time_supports_64bit
      assert_equal(true, t1.eql?(t3))
      assert_equal(false, t1.eql?(t4))
      assert_equal(true, t3.eql?(t1))
      assert_equal(false, t4.eql?(t1))
    else
      assert_equal(false, t1.eql?(t3))
      assert_equal(true, t1.eql?(t4))
      assert_equal(false, t3.eql?(t1))
      assert_equal(true, t4.eql?(t1))
    end
  end
  
  def test_eql_timestamp_and_datetime_before_epoch
    t1 = TimezoneTransitionInfo.new(TimezoneOffsetInfo.new(3600, 3600, :TDT),
      TimezoneOffsetInfo.new(3600, 0, :TST), -1, 210866759999, 86400)
    t2 = TimezoneTransitionInfo.new(TimezoneOffsetInfo.new(3600, 3600, :TDT),
      TimezoneOffsetInfo.new(3600, 0, :TST), -1, 210866759999, 86400)
    t3 = TimezoneTransitionInfo.new(TimezoneOffsetInfo.new(3600, 3600, :TDT),    
      TimezoneOffsetInfo.new(3600, 0, :TST), -1)
    t4 = TimezoneTransitionInfo.new(TimezoneOffsetInfo.new(3600, 3600, :TDT),
      TimezoneOffsetInfo.new(3600, 0, :TST), 210866759999, 86400)
      
    assert_equal(true, t1.eql?(t1))
    assert_equal(true, t1.eql?(t2))
    
    if RubyCoreSupport.time_supports_negative
      assert_equal(true, t1.eql?(t3))
      assert_equal(false, t1.eql?(t4))
      assert_equal(true, t3.eql?(t1))
      assert_equal(false, t4.eql?(t1))
    else
      assert_equal(false, t1.eql?(t3))
      assert_equal(true, t1.eql?(t4))
      assert_equal(false, t3.eql?(t1))
      assert_equal(true, t4.eql?(t1))
    end
  end
  
  def test_eql_timestamp_and_datetime_after_32bit
    t1 = TimezoneTransitionInfo.new(TimezoneOffsetInfo.new(3600, 3600, :TDT),
      TimezoneOffsetInfo.new(3600, 0, :TST), 2147483648, 3328347557, 1350)
    t2 = TimezoneTransitionInfo.new(TimezoneOffsetInfo.new(3600, 3600, :TDT),
      TimezoneOffsetInfo.new(3600, 0, :TST), 2147483648, 3328347557, 1350)
    t3 = TimezoneTransitionInfo.new(TimezoneOffsetInfo.new(3600, 3600, :TDT),    
      TimezoneOffsetInfo.new(3600, 0, :TST), 2147483648)
    t4 = TimezoneTransitionInfo.new(TimezoneOffsetInfo.new(3600, 3600, :TDT),
      TimezoneOffsetInfo.new(3600, 0, :TST), 3328347557, 1350)
      
    assert_equal(true, t1.eql?(t1))
    assert_equal(true, t1.eql?(t2))
    
    if RubyCoreSupport.time_supports_64bit
      assert_equal(true, t1.eql?(t3))
      assert_equal(false, t1.eql?(t4))
      assert_equal(true, t3.eql?(t1))
      assert_equal(false, t4.eql?(t1))
    else
      assert_equal(false, t1.eql?(t3))
      assert_equal(true, t1.eql?(t4))
      assert_equal(false, t3.eql?(t1))
      assert_equal(true, t4.eql?(t1))
    end
  end
  
  def test_hash
    t1 = TimezoneTransitionInfo.new(TimezoneOffsetInfo.new(3600, 3600, :TDT),
      TimezoneOffsetInfo.new(3600, 0, :TST), 1148949080)
    t2 = TimezoneTransitionInfo.new(TimezoneOffsetInfo.new(3600, 3600, :TDT),
      TimezoneOffsetInfo.new(3600, 0, :TST), 5300392727, 2160)
    t3 = TimezoneTransitionInfo.new(TimezoneOffsetInfo.new(3600, 3600, :TDT),
      TimezoneOffsetInfo.new(3600, 0, :TST), 1148949080, 5300392727, 2160)
    t4 = TimezoneTransitionInfo.new(TimezoneOffsetInfo.new(3600, 3600, :TDT),
      TimezoneOffsetInfo.new(3600, 0, :TST), -2147483649, 69573092117, 28800)
    t5 = TimezoneTransitionInfo.new(TimezoneOffsetInfo.new(3600, 3600, :TDT),
      TimezoneOffsetInfo.new(3600, 0, :TST), -1, 210866759999, 86400)
    t6 = TimezoneTransitionInfo.new(TimezoneOffsetInfo.new(3600, 3600, :TDT),
      TimezoneOffsetInfo.new(3600, 0, :TST), 2147483648, 3328347557, 1350)
      
    assert_equal(TimezoneOffsetInfo.new(3600, 3600, :TDT).hash ^
      TimezoneOffsetInfo.new(3600, 0, :TST).hash ^ 1148949080.hash ^ nil.hash, 
      t1.hash)
    assert_equal(TimezoneOffsetInfo.new(3600, 3600, :TDT).hash ^
      TimezoneOffsetInfo.new(3600, 0, :TST).hash ^ 5300392727.hash ^ 2160.hash, 
      t2.hash)
    assert_equal(TimezoneOffsetInfo.new(3600, 3600, :TDT).hash ^
      TimezoneOffsetInfo.new(3600, 0, :TST).hash ^ 1148949080.hash ^ nil.hash, 
      t3.hash)
      
    if RubyCoreSupport.time_supports_negative && RubyCoreSupport.time_supports_64bit
      assert_equal(TimezoneOffsetInfo.new(3600, 3600, :TDT).hash ^
        TimezoneOffsetInfo.new(3600, 0, :TST).hash ^ -2147483649.hash ^ nil.hash, 
        t4.hash)
    else
      assert_equal(TimezoneOffsetInfo.new(3600, 3600, :TDT).hash ^
        TimezoneOffsetInfo.new(3600, 0, :TST).hash ^ 69573092117.hash ^ 28800.hash, 
        t4.hash)
    end
    
    if RubyCoreSupport.time_supports_negative
      assert_equal(TimezoneOffsetInfo.new(3600, 3600, :TDT).hash ^
        TimezoneOffsetInfo.new(3600, 0, :TST).hash ^ -1.hash ^ nil.hash, 
        t5.hash)
    else
      assert_equal(TimezoneOffsetInfo.new(3600, 3600, :TDT).hash ^
        TimezoneOffsetInfo.new(3600, 0, :TST).hash ^ 210866759999.hash ^ 86400.hash, 
        t5.hash)
    end
    
    if RubyCoreSupport.time_supports_64bit
      assert_equal(TimezoneOffsetInfo.new(3600, 3600, :TDT).hash ^
        TimezoneOffsetInfo.new(3600, 0, :TST).hash ^ 2147483648.hash ^ nil.hash, 
        t6.hash)
    else
      assert_equal(TimezoneOffsetInfo.new(3600, 3600, :TDT).hash ^
        TimezoneOffsetInfo.new(3600, 0, :TST).hash ^ 3328347557.hash ^ 1350.hash, 
        t6.hash)
    end
  end
end
