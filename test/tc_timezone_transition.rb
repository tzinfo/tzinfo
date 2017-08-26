require File.join(File.expand_path(File.dirname(__FILE__)), 'test_utils')
require 'date'

include TZInfo

class TCTimezoneTransition < Minitest::Test

  def test_offset
    t = TimezoneTransition.new(TimezoneOffset.new(3600, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), 1148949080)

    assert_equal(TimezoneOffset.new(3600, 3600, :TDT), t.offset)
  end

  def test_previous_offset
    t = TimezoneTransition.new(TimezoneOffset.new(3600, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), 1148949080)

    assert_equal(TimezoneOffset.new(3600, 0, :TST), t.previous_offset)
  end

  def test_timestamp_value
    t = TimezoneTransition.new(TimezoneOffset.new(3600, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), 1148949080)

    assert_equal(1148949080, t.timestamp_value)
  end

  def test_at
    t = TimezoneTransition.new(TimezoneOffset.new(3600, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), 1148949080)

    at = t.at
    assert_equal_with_offset(Timestamp.utc(1148949080), at)
    assert_same(at, t.at)
  end

  def test_datetime
    t1 = TimezoneTransition.new(TimezoneOffset.new(3600, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), 1148949080)
    t2 = TimezoneTransition.new(TimezoneOffset.new(7200, 0, :TST),
      TimezoneOffset.new(7200, 3600, :TDT), 1148949080)
    t3 = TimezoneTransition.new(TimezoneOffset.new(-3600, 3600, :TDT),
      TimezoneOffset.new(-3600, 0, :TST), 1148949080)

    assert_equal_with_offset(DateTime.new(2006, 5, 30, 0, 31, 20), t1.datetime)
    assert_equal_with_offset(DateTime.new(2006, 5, 30, 0, 31, 20), t2.datetime)
    assert_equal_with_offset(DateTime.new(2006, 5, 30, 0, 31, 20), t3.datetime)
  end

  def test_time
    t1 = TimezoneTransition.new(TimezoneOffset.new(3600, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), 1148949080)
    t2 = TimezoneTransition.new(TimezoneOffset.new(7200, 0, :TST),
      TimezoneOffset.new(7200, 3600, :TDT), 1148949080)
    t3 = TimezoneTransition.new(TimezoneOffset.new(-3600, 3600, :TDT),
      TimezoneOffset.new(-3600, 0, :TST), 1148949080)

    assert_equal_with_offset(Time.utc(2006, 5, 30, 0, 31, 20), t1.time)
    assert_equal_with_offset(Time.utc(2006, 5, 30, 0, 31, 20), t2.time)
    assert_equal_with_offset(Time.utc(2006, 5, 30, 0, 31, 20), t3.time)
  end

  def test_local_end_at
    t1 = TimezoneTransition.new(TimezoneOffset.new(3600, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), 1148949080)
    t2 = TimezoneTransition.new(TimezoneOffset.new(7200, 0, :TST),
      TimezoneOffset.new(7200, 3600, :TDT), 1148949080)
    t3 = TimezoneTransition.new(TimezoneOffset.new(-3600, 3600, :TDT),
      TimezoneOffset.new(-3600, 0, :TST), 1148949080)

    assert_equal_with_offset(Timestamp.new(1148949080, 0, 3600), t1.local_end_at)
    assert_equal_with_offset(Timestamp.new(1148949080, 0, 10800), t2.local_end_at)
    assert_equal_with_offset(Timestamp.new(1148949080, 0, -3600), t3.local_end_at)
  end

  def test_local_end
    t1 = TimezoneTransition.new(TimezoneOffset.new(3600, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), 1148949080)
    t2 = TimezoneTransition.new(TimezoneOffset.new(7200, 0, :TST),
      TimezoneOffset.new(7200, 3600, :TDT), 1148949080)
    t3 = TimezoneTransition.new(TimezoneOffset.new(-3600, 3600, :TDT),
      TimezoneOffset.new(-3600, 0, :TST), 1148949080)

    assert_equal_with_offset(DateTime.new(2006, 5, 30, 1, 31, 20, '+01:00'), t1.local_end)
    assert_equal_with_offset(DateTime.new(2006, 5, 30, 3, 31, 20, '+03:00'), t2.local_end)
    assert_equal_with_offset(DateTime.new(2006, 5, 29, 23, 31, 20, '-01:00'), t3.local_end)
  end

  def test_local_end_time
    t1 = TimezoneTransition.new(TimezoneOffset.new(3600, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), 1148949080)
    t2 = TimezoneTransition.new(TimezoneOffset.new(7200, 0, :TST),
      TimezoneOffset.new(7200, 3600, :TDT), 1148949080)
    t3 = TimezoneTransition.new(TimezoneOffset.new(-3600, 3600, :TDT),
      TimezoneOffset.new(-3600, 0, :TST), 1148949080)

    assert_equal_with_offset(Time.new(2006, 5, 30, 1, 31, 20, '+01:00'), t1.local_end_time)
    assert_equal_with_offset(Time.new(2006, 5, 30, 3, 31, 20, '+03:00'), t2.local_end_time)
    assert_equal_with_offset(Time.new(2006, 5, 29, 23, 31, 20, '-01:00'), t3.local_end_time)
  end

  def test_local_start_at
    t1 = TimezoneTransition.new(TimezoneOffset.new(3600, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), 1148949080)
    t2 = TimezoneTransition.new(TimezoneOffset.new(7200, 0, :TST),
      TimezoneOffset.new(7200, 3600, :TDT), 1148949080)
    t3 = TimezoneTransition.new(TimezoneOffset.new(-3600, 3600, :TDT),
      TimezoneOffset.new(-3600, 0, :TST), 1148949080)

    assert_equal_with_offset(Timestamp.new(1148949080, 0, 7200), t1.local_start_at)
    assert_equal_with_offset(Timestamp.new(1148949080, 0, 7200), t2.local_start_at)
    assert_equal_with_offset(Timestamp.new(1148949080, 0, 0), t3.local_start_at)
  end

  def test_local_start
    t1 = TimezoneTransition.new(TimezoneOffset.new(3600, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), 1148949080)
    t2 = TimezoneTransition.new(TimezoneOffset.new(7200, 0, :TST),
      TimezoneOffset.new(7200, 3600, :TDT), 1148949080)
    t3 = TimezoneTransition.new(TimezoneOffset.new(-3600, 3600, :TDT),
      TimezoneOffset.new(-3600, 0, :TST), 1148949080)

    assert_equal_with_offset(DateTime.new(2006, 5, 30, 2, 31, 20, '+02:00'), t1.local_start)
    assert_equal_with_offset(DateTime.new(2006, 5, 30, 2, 31, 20, '+02:00'), t2.local_start)
    assert_equal_with_offset(DateTime.new(2006, 5, 30, 0, 31, 20, '+00:00'), t3.local_start)
  end

  def test_local_start_time
    t1 = TimezoneTransition.new(TimezoneOffset.new(3600, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), 1148949080)
    t2 = TimezoneTransition.new(TimezoneOffset.new(7200, 0, :TST),
      TimezoneOffset.new(7200, 3600, :TDT), 1148949080)
    t3 = TimezoneTransition.new(TimezoneOffset.new(-3600, 3600, :TDT),
      TimezoneOffset.new(-3600, 0, :TST), 1148949080)

    assert_equal_with_offset(Time.new(2006, 5, 30, 2, 31, 20, '+02:00'), t1.local_start_time)
    assert_equal_with_offset(Time.new(2006, 5, 30, 2, 31, 20, '+02:00'), t2.local_start_time)
    assert_equal_with_offset(Time.new(2006, 5, 30, 0, 31, 20, '+00:00'), t3.local_start_time)
  end

  def test_equality
    t1 = TimezoneTransition.new(TimezoneOffset.new(3600, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), 1148949080)
    t2 = TimezoneTransition.new(TimezoneOffset.new(3600, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), 1148949080)
    t3 = TimezoneTransition.new(TimezoneOffset.new(3600, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), 1148949081)
    t4 = TimezoneTransition.new(TimezoneOffset.new(3601, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), 1148949080)
    t5 = TimezoneTransition.new(TimezoneOffset.new(3600, 3600, :TDT),
      TimezoneOffset.new(3601, 0, :TST), 1148949080)

    assert_equal(true, t1 == t1)
    assert_equal(true, t1 == t2)
    assert_equal(false, t1 == t3)
    assert_equal(false, t1 == t4)
    assert_equal(false, t1 == t5)
    assert_equal(false, t1 == Object.new)

    assert_equal(true, t1.eql?(t1))
    assert_equal(true, t1.eql?(t2))
    assert_equal(false, t1.eql?(t3))
    assert_equal(false, t1.eql?(t4))
    assert_equal(false, t1.eql?(t5))
    assert_equal(false, t1.eql?(Object.new))
  end

  def test_hash
    t = TimezoneTransition.new(TimezoneOffset.new(3600, 3600, :TDTA),
      TimezoneOffset.new(3600, 0, :TSTA), 1148949080)

    assert_equal(TimezoneOffset.new(3600, 3600, :TDTA).hash ^
      TimezoneOffset.new(3600, 0, :TSTA).hash ^ 1148949080.hash,
      t.hash)
  end

  def test_inspect
    t = TimezoneTransition.new(TimezoneOffset.new(3600, 3600, :TDTA),
      TimezoneOffset.new(3600, 0, :TSTA), 1148949080)

    assert_equal("#<TZInfo::TimezoneTransition: @offset=#{t.offset.inspect}, @previous_offset=#{t.previous_offset.inspect}, @timestamp_value=#{t.timestamp_value}>", t.inspect)
  end
end
