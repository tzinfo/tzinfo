require File.join(File.expand_path(File.dirname(__FILE__)), 'test_utils')

include TZInfo

class TCTimezonePeriod < Minitest::Test

  def test_initialize_start_end
    std = TimezoneOffset.new(-7200, 0, :TEST)
    dst = TimezoneOffset.new(-7200, 3600, :TEST)
    start_t = TimezoneTransition.new(dst, std, 1136073600)
    end_t = TimezoneTransition.new(std, dst, 1136160000)

    p = TimezonePeriod.new(start_t, end_t)

    assert_same(start_t, p.start_transition)
    assert_same(end_t, p.end_transition)
    assert_same(dst, p.offset)
    assert_equal_with_offset(DateTime.new(2006,1,1,0,0,0), p.utc_start)
    assert_equal_with_offset(Time.utc(2006,1,1,0,0,0), p.utc_start_time)
    assert_equal_with_offset(DateTime.new(2006,1,2,0,0,0), p.utc_end)
    assert_equal_with_offset(Time.utc(2006,1,2,0,0,0), p.utc_end_time)
    assert_equal(-7200, p.utc_offset)
    assert_equal(3600, p.std_offset)
    assert_equal(-3600, p.utc_total_offset)
    assert_equal(Rational(-3600, 86400), p.utc_total_offset_rational)
    assert_equal(:TEST, p.zone_identifier)
    assert_equal(:TEST, p.abbreviation)
    assert_equal_with_offset(DateTime.new(2005,12,31,23,0,0,'-01:00'), p.local_start)
    assert_equal_with_offset(Time.new(2005,12,31,23,0,0,'-01:00'), p.local_start_time)
    assert_equal_with_offset(DateTime.new(2006,1,1,23,0,0,'-01:00'), p.local_end)
    assert_equal_with_offset(Time.new(2006,1,1,23,0,0,'-01:00'), p.local_end_time)
  end

  def test_initialize_start_end_offset
    std = TimezoneOffset.new(-7200, 0, :TEST)
    dst = TimezoneOffset.new(-7200, 3600, :TEST)
    special = TimezoneOffset.new(0, 0, :SPECIAL)
    start_t = TimezoneTransition.new(dst, std, 1136073600)
    end_t = TimezoneTransition.new(std, dst, 1136160000)

    assert_raises(ArgumentError) { TimezonePeriod.new(start_t, end_t, special) }
  end

  def test_initialize_start
    std = TimezoneOffset.new(-7200, 0, :TEST)
    dst = TimezoneOffset.new(-7200, 3600, :TEST)
    start_t = TimezoneTransition.new(dst, std, 1136073600)

    p = TimezonePeriod.new(start_t, nil)

    assert_same(start_t, p.start_transition)
    assert_nil(p.end_transition)
    assert_same(dst, p.offset)
    assert_equal_with_offset(DateTime.new(2006,1,1,0,0,0), p.utc_start)
    assert_equal_with_offset(Time.utc(2006,1,1,0,0,0), p.utc_start_time)
    assert_nil(p.utc_end)
    assert_nil(p.utc_end_time)
    assert_equal(-7200, p.utc_offset)
    assert_equal(3600, p.std_offset)
    assert_equal(-3600, p.utc_total_offset)
    assert_equal(Rational(-3600, 86400), p.utc_total_offset_rational)
    assert_equal(:TEST, p.zone_identifier)
    assert_equal(:TEST, p.abbreviation)
    assert_equal_with_offset(DateTime.new(2005,12,31,23,0,0,'-01:00'), p.local_start)
    assert_equal_with_offset(Time.new(2005,12,31,23,0,0,'-01:00'), p.local_start_time)
    assert_nil(p.local_end)
    assert_nil(p.local_end_time)
  end

  def test_initialize_start_offset
    std = TimezoneOffset.new(-7200, 0, :TEST)
    dst = TimezoneOffset.new(-7200, 3600, :TEST)
    special = TimezoneOffset.new(0, 0, :SPECIAL)
    start_t = TimezoneTransition.new(dst, std, 1136073600)

    assert_raises(ArgumentError) { TimezonePeriod.new(start_t, nil, special) }
  end

  def test_initialize_end
    std = TimezoneOffset.new(-7200, 0, :TEST)
    dst = TimezoneOffset.new(-7200, 3600, :TEST)
    end_t = TimezoneTransition.new(std, dst, 1136160000)

    p = TimezonePeriod.new(nil, end_t)

    assert_nil(p.start_transition)
    assert_same(end_t, p.end_transition)
    assert_same(dst, p.offset)
    assert_nil(p.utc_start)
    assert_nil(p.utc_start_time)
    assert_equal_with_offset(DateTime.new(2006,1,2,0,0,0), p.utc_end)
    assert_equal_with_offset(Time.utc(2006,1,2,0,0,0), p.utc_end_time)
    assert_equal(-7200, p.utc_offset)
    assert_equal(3600, p.std_offset)
    assert_equal(-3600, p.utc_total_offset)
    assert_equal(Rational(-3600, 86400), p.utc_total_offset_rational)
    assert_equal(:TEST, p.zone_identifier)
    assert_equal(:TEST, p.abbreviation)
    assert_nil(p.local_start)
    assert_nil(p.local_start_time)
    assert_equal_with_offset(DateTime.new(2006,1,1,23,0,0,'-01:00'), p.local_end)
    assert_equal_with_offset(Time.new(2006,1,1,23,0,0,'-01:00'), p.local_end_time)
  end

  def test_initialize_end_offset
    std = TimezoneOffset.new(-7200, 0, :TEST)
    dst = TimezoneOffset.new(-7200, 3600, :TEST)
    special = TimezoneOffset.new(0, 0, :SPECIAL)
    end_t = TimezoneTransition.new(std, dst, 1136160000)

    assert_raises(ArgumentError) { TimezonePeriod.new(nil, end_t, special) }
  end

  def test_initialize
    assert_raises(ArgumentError) { TimezonePeriod.new(nil, nil) }
  end

  def test_initialize_offset
    special = TimezoneOffset.new(0, 0, :SPECIAL)

    p = TimezonePeriod.new(nil, nil, special)

    assert_nil(p.start_transition)
    assert_nil(p.end_transition)
    assert_same(special, p.offset)
    assert_nil(p.utc_start)
    assert_nil(p.utc_start_time)
    assert_nil(p.utc_end)
    assert_nil(p.utc_end_time)
    assert_equal(0, p.utc_offset)
    assert_equal(0, p.std_offset)
    assert_equal(0, p.utc_total_offset)
    assert_equal(Rational(0, 86400), p.utc_total_offset_rational)
    assert_equal(:SPECIAL, p.zone_identifier)
    assert_equal(:SPECIAL, p.abbreviation)
    assert_nil(p.local_start)
    assert_nil(p.local_start_time)
    assert_nil(p.local_end)
    assert_nil(p.local_end_time)
  end

  def test_dst
    p1 = TimezonePeriod.new(nil, nil, TimezoneOffset.new(-14400, 3600, :TEST))
    p2 = TimezonePeriod.new(nil, nil, TimezoneOffset.new(-14400, 0, :TEST))
    p3 = TimezonePeriod.new(nil, nil, TimezoneOffset.new(-14400, -3600, :TEST))
    p4 = TimezonePeriod.new(nil, nil, TimezoneOffset.new(-14400, 7200, :TEST))
    p5 = TimezonePeriod.new(nil, nil, TimezoneOffset.new(-14400, -7200, :TEST))

    assert_equal(true, p1.dst?)
    assert_equal(false, p2.dst?)
    assert_equal(true, p3.dst?)
    assert_equal(true, p4.dst?)
    assert_equal(true, p5.dst?)
  end

  def test_time_boundary_start
    o1 = TimezoneOffset.new(-3600, 0, :TEST)
    o2 = TimezoneOffset.new(-3600, 3600, :TEST)
    t1 = TimezoneTransition.new(o1, o2, 0)

    p1 = TimezonePeriod.new(t1, nil)

    assert_equal_with_offset(DateTime.new(1969,12,31,23,0,0,'-01:00'), p1.local_start)
    assert_equal_with_offset(Time.new(1969,12,31,23,0,0,'-01:00'), p1.local_start_time)
  end

  def test_time_boundary_end
    o1 = TimezoneOffset.new(0, 3600, :TEST)
    o2 = TimezoneOffset.new(0, 0, :TEST)
    t1 = TimezoneTransition.new(o2, o1, 2147482800)

    p1 = TimezonePeriod.new(nil, t1)

    assert_equal_with_offset(DateTime.new(2038,1,19,4,0,0,'+01:00'), p1.local_end)
    assert_equal_with_offset(Time.new(2038,1,19,4,0,0,'+01:00'), p1.local_end_time)
  end

  def test_equality
    o1 = TimezoneOffset.new(0, 3600, :TEST)
    o2 = TimezoneOffset.new(0, 0, :TEST)
    t1 = TimezoneTransition.new(o1, o2, 1149368400)
    t2 = TimezoneTransition.new(o1, o2, 1149454800)
    t3 = TimezoneTransition.new(o1, o2, 1149541200)

    p1 = TimezonePeriod.new(t1, t2)
    p2 = TimezonePeriod.new(t1, t2)
    p3 = TimezonePeriod.new(t2, nil)
    p4 = TimezonePeriod.new(t2, nil)
    p5 = TimezonePeriod.new(t3, nil)
    p6 = TimezonePeriod.new(nil, t2)
    p7 = TimezonePeriod.new(nil, t2)
    p8 = TimezonePeriod.new(nil, t3)
    p9 = TimezonePeriod.new(nil, nil, o1)
    p10 = TimezonePeriod.new(nil, nil, o1)
    p11 = TimezonePeriod.new(nil, nil, o2)

    assert_equal(true, p1 == p1)
    assert_equal(true, p1 == p2)
    assert_equal(false, p1 == p3)
    assert_equal(false, p1 == p4)
    assert_equal(false, p1 == p5)
    assert_equal(false, p1 == p6)
    assert_equal(false, p1 == p7)
    assert_equal(false, p1 == p8)
    assert_equal(false, p1 == p9)
    assert_equal(false, p1 == p10)
    assert_equal(false, p1 == p11)
    assert_equal(false, p1 == Object.new)

    assert_equal(true, p3 == p3)
    assert_equal(true, p3 == p4)
    assert_equal(false, p3 == p5)
    assert_equal(false, p3 == Object.new)

    assert_equal(true, p6 == p6)
    assert_equal(true, p6 == p7)
    assert_equal(false, p6 == p8)
    assert_equal(false, p6 == Object.new)

    assert_equal(true, p9 == p9)
    assert_equal(true, p9 == p10)
    assert_equal(false, p9 == p11)
    assert_equal(false, p9 == Object.new)
  end

  def test_eql
    o1 = TimezoneOffset.new(0, 3600, :TEST)
    o2 = TimezoneOffset.new(0, 0, :TEST)
    t1 = TimezoneTransition.new(o1, o2, 1149368400)
    t2 = TimezoneTransition.new(o1, o2, 1149454800)
    t3 = TimezoneTransition.new(o1, o2, 1149541200)

    p1 = TimezonePeriod.new(t1, t2)
    p2 = TimezonePeriod.new(t1, t2)
    p3 = TimezonePeriod.new(t2, nil)
    p4 = TimezonePeriod.new(t2, nil)
    p5 = TimezonePeriod.new(t3, nil)
    p6 = TimezonePeriod.new(nil, t2)
    p7 = TimezonePeriod.new(nil, t2)
    p8 = TimezonePeriod.new(nil, t3)
    p9 = TimezonePeriod.new(nil, nil, o1)
    p10 = TimezonePeriod.new(nil, nil, o1)
    p11 = TimezonePeriod.new(nil, nil, o2)

    assert_equal(true, p1.eql?(p1))
    assert_equal(true, p1.eql?(p2))
    assert_equal(false, p1.eql?(p3))
    assert_equal(false, p1.eql?(p4))
    assert_equal(false, p1.eql?(p5))
    assert_equal(false, p1.eql?(p6))
    assert_equal(false, p1.eql?(p7))
    assert_equal(false, p1.eql?(p8))
    assert_equal(false, p1.eql?(p9))
    assert_equal(false, p1.eql?(p10))
    assert_equal(false, p1.eql?(p11))
    assert_equal(false, p1.eql?(Object.new))

    assert_equal(true, p3.eql?(p3))
    assert_equal(true, p3.eql?(p4))
    assert_equal(false, p3.eql?(p5))
    assert_equal(false, p3.eql?(Object.new))

    assert_equal(true, p6.eql?(p6))
    assert_equal(true, p6.eql?(p7))
    assert_equal(false, p6.eql?(p8))
    assert_equal(false, p6.eql?(Object.new))

    assert_equal(true, p9.eql?(p9))
    assert_equal(true, p9.eql?(p10))
    assert_equal(false, p9.eql?(p11))
    assert_equal(false, p9.eql?(Object.new))
  end

  def test_hash
    o1 = TimezoneOffset.new(0, 3600, :TEST)
    o2 = TimezoneOffset.new(0, 0, :TEST)
    t1 = TimezoneTransition.new(o1, o2, 1149368400)
    t2 = TimezoneTransition.new(o1, o2, 1149454800)

    p1 = TimezonePeriod.new(t1, t2)
    p2 = TimezonePeriod.new(t1, nil)
    p3 = TimezonePeriod.new(nil, t2)
    p4 = TimezonePeriod.new(nil, nil, o1)

    assert_equal(t1.hash ^ t2.hash, p1.hash)
    assert_equal(t1.hash ^ nil.hash, p2.hash)
    assert_equal(nil.hash ^ t2.hash, p3.hash)
    assert_equal(nil.hash ^ nil.hash ^ o1.hash, p4.hash)
  end
end
