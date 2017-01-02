require File.join(File.expand_path(File.dirname(__FILE__)), 'test_utils')
require 'date'

include TZInfo

class TCTimezoneTransition < Minitest::Test

  class TestTimezoneTransition < TimezoneTransition
    def initialize(offset, previous_offset, at)
      super(offset, previous_offset)
      @at = Timestamp.utc(at)
    end

    def at
      @at
    end
  end

  def test_offset
    t = TestTimezoneTransition.new(TimezoneOffset.new(3600, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), 1148949080)

    assert_equal(TimezoneOffset.new(3600, 3600, :TDT), t.offset)
  end

  def test_previous_offset
    t = TestTimezoneTransition.new(TimezoneOffset.new(3600, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), 1148949080)

    assert_equal(TimezoneOffset.new(3600, 0, :TST), t.previous_offset)
  end

  def test_datetime
    t1 = TestTimezoneTransition.new(TimezoneOffset.new(3600, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), 1148949080)
    t2 = TestTimezoneTransition.new(TimezoneOffset.new(7200, 0, :TST),
      TimezoneOffset.new(7200, 3600, :TDT), 1148949080)
    t3 = TestTimezoneTransition.new(TimezoneOffset.new(-3600, 3600, :TDT),
      TimezoneOffset.new(-3600, 0, :TST), 1148949080)

    assert_equal_with_offset(DateTime.new(2006, 5, 30, 0, 31, 20), t1.datetime)
    assert_equal_with_offset(DateTime.new(2006, 5, 30, 0, 31, 20), t2.datetime)
    assert_equal_with_offset(DateTime.new(2006, 5, 30, 0, 31, 20), t3.datetime)
  end

  def test_time
    t1 = TestTimezoneTransition.new(TimezoneOffset.new(3600, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), 1148949080)
    t2 = TestTimezoneTransition.new(TimezoneOffset.new(7200, 0, :TST),
      TimezoneOffset.new(7200, 3600, :TDT), 1148949080)
    t3 = TestTimezoneTransition.new(TimezoneOffset.new(-3600, 3600, :TDT),
      TimezoneOffset.new(-3600, 0, :TST), 1148949080)

    assert_equal_with_offset(Time.utc(2006, 5, 30, 0, 31, 20), t1.time)
    assert_equal_with_offset(Time.utc(2006, 5, 30, 0, 31, 20), t2.time)
    assert_equal_with_offset(Time.utc(2006, 5, 30, 0, 31, 20), t3.time)
  end

  def test_local_end_at
    t1 = TestTimezoneTransition.new(TimezoneOffset.new(3600, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), 1148949080)
    t2 = TestTimezoneTransition.new(TimezoneOffset.new(7200, 0, :TST),
      TimezoneOffset.new(7200, 3600, :TDT), 1148949080)
    t3 = TestTimezoneTransition.new(TimezoneOffset.new(-3600, 3600, :TDT),
      TimezoneOffset.new(-3600, 0, :TST), 1148949080)

    assert_equal_with_offset(Timestamp.new(1148949080, 0, 3600), t1.local_end_at)
    assert_equal_with_offset(Timestamp.new(1148949080, 0, 10800), t2.local_end_at)
    assert_equal_with_offset(Timestamp.new(1148949080, 0, -3600), t3.local_end_at)
  end

  def test_local_end
    t1 = TestTimezoneTransition.new(TimezoneOffset.new(3600, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), 1148949080)
    t2 = TestTimezoneTransition.new(TimezoneOffset.new(7200, 0, :TST),
      TimezoneOffset.new(7200, 3600, :TDT), 1148949080)
    t3 = TestTimezoneTransition.new(TimezoneOffset.new(-3600, 3600, :TDT),
      TimezoneOffset.new(-3600, 0, :TST), 1148949080)

    assert_equal_with_offset(DateTime.new(2006, 5, 30, 1, 31, 20, '+01:00'), t1.local_end)
    assert_equal_with_offset(DateTime.new(2006, 5, 30, 3, 31, 20, '+03:00'), t2.local_end)
    assert_equal_with_offset(DateTime.new(2006, 5, 29, 23, 31, 20, '-01:00'), t3.local_end)
  end

  def test_local_end_time
    t1 = TestTimezoneTransition.new(TimezoneOffset.new(3600, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), 1148949080)
    t2 = TestTimezoneTransition.new(TimezoneOffset.new(7200, 0, :TST),
      TimezoneOffset.new(7200, 3600, :TDT), 1148949080)
    t3 = TestTimezoneTransition.new(TimezoneOffset.new(-3600, 3600, :TDT),
      TimezoneOffset.new(-3600, 0, :TST), 1148949080)

    assert_equal_with_offset(Time.new(2006, 5, 30, 1, 31, 20, '+01:00'), t1.local_end_time)
    assert_equal_with_offset(Time.new(2006, 5, 30, 3, 31, 20, '+03:00'), t2.local_end_time)
    assert_equal_with_offset(Time.new(2006, 5, 29, 23, 31, 20, '-01:00'), t3.local_end_time)
  end

  def test_local_start_at
    t1 = TestTimezoneTransition.new(TimezoneOffset.new(3600, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), 1148949080)
    t2 = TestTimezoneTransition.new(TimezoneOffset.new(7200, 0, :TST),
      TimezoneOffset.new(7200, 3600, :TDT), 1148949080)
    t3 = TestTimezoneTransition.new(TimezoneOffset.new(-3600, 3600, :TDT),
      TimezoneOffset.new(-3600, 0, :TST), 1148949080)

    assert_equal_with_offset(Timestamp.new(1148949080, 0, 7200), t1.local_start_at)
    assert_equal_with_offset(Timestamp.new(1148949080, 0, 7200), t2.local_start_at)
    assert_equal_with_offset(Timestamp.new(1148949080, 0, 0), t3.local_start_at)
  end

  def test_local_start
    t1 = TestTimezoneTransition.new(TimezoneOffset.new(3600, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), 1148949080)
    t2 = TestTimezoneTransition.new(TimezoneOffset.new(7200, 0, :TST),
      TimezoneOffset.new(7200, 3600, :TDT), 1148949080)
    t3 = TestTimezoneTransition.new(TimezoneOffset.new(-3600, 3600, :TDT),
      TimezoneOffset.new(-3600, 0, :TST), 1148949080)

    assert_equal_with_offset(DateTime.new(2006, 5, 30, 2, 31, 20, '+02:00'), t1.local_start)
    assert_equal_with_offset(DateTime.new(2006, 5, 30, 2, 31, 20, '+02:00'), t2.local_start)
    assert_equal_with_offset(DateTime.new(2006, 5, 30, 0, 31, 20, '+00:00'), t3.local_start)
  end

  def test_local_start_time
    t1 = TestTimezoneTransition.new(TimezoneOffset.new(3600, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), 1148949080)
    t2 = TestTimezoneTransition.new(TimezoneOffset.new(7200, 0, :TST),
      TimezoneOffset.new(7200, 3600, :TDT), 1148949080)
    t3 = TestTimezoneTransition.new(TimezoneOffset.new(-3600, 3600, :TDT),
      TimezoneOffset.new(-3600, 0, :TST), 1148949080)

    assert_equal_with_offset(Time.new(2006, 5, 30, 2, 31, 20, '+02:00'), t1.local_start_time)
    assert_equal_with_offset(Time.new(2006, 5, 30, 2, 31, 20, '+02:00'), t2.local_start_time)
    assert_equal_with_offset(Time.new(2006, 5, 30, 0, 31, 20, '+00:00'), t3.local_start_time)
  end

  def test_absolute_local_end_at
    t1 = TestTimezoneTransition.new(TimezoneOffset.new(3600, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), 1148949080)
    t2 = TestTimezoneTransition.new(TimezoneOffset.new(7200, 0, :TST),
      TimezoneOffset.new(7200, 3600, :TDT), 1148949080)
    t3 = TestTimezoneTransition.new(TimezoneOffset.new(-3600, 3600, :TDT),
      TimezoneOffset.new(-3600, 0, :TST), 1148949080)

    assert_equal_with_offset(Timestamp.new(1148952680), t1.absolute_local_end_at)
    assert_equal_with_offset(Timestamp.new(1148959880), t2.absolute_local_end_at)
    assert_equal_with_offset(Timestamp.new(1148945480), t3.absolute_local_end_at)
  end

  def test_absolute_local_start_at
    t1 = TestTimezoneTransition.new(TimezoneOffset.new(3600, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), 1148949080)
    t2 = TestTimezoneTransition.new(TimezoneOffset.new(7200, 0, :TST),
      TimezoneOffset.new(7200, 3600, :TDT), 1148949080)
    t3 = TestTimezoneTransition.new(TimezoneOffset.new(-3600, 3600, :TDT),
      TimezoneOffset.new(-3600, 0, :TST), 1148949080)

    assert_equal_with_offset(Timestamp.new(1148956280), t1.absolute_local_start_at)
    assert_equal_with_offset(Timestamp.new(1148956280), t2.absolute_local_start_at)
    assert_equal_with_offset(Timestamp.new(1148949080), t3.absolute_local_start_at)
  end

  def test_equality
    t1 = TestTimezoneTransition.new(TimezoneOffset.new(3600, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), 1148949080)
    t2 = TestTimezoneTransition.new(TimezoneOffset.new(3600, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), 1148949080)
    t3 = TestTimezoneTransition.new(TimezoneOffset.new(3600, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), 1148949081)
    t4 = TestTimezoneTransition.new(TimezoneOffset.new(3601, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), 1148949080)
    t5 = TestTimezoneTransition.new(TimezoneOffset.new(3600, 3600, :TDT),
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
    t = TestTimezoneTransition.new(TimezoneOffset.new(3600, 3600, :TDTA),
      TimezoneOffset.new(3600, 0, :TSTA), 1148949080)

    assert_equal(TimezoneOffset.new(3600, 3600, :TDTA).hash ^
      TimezoneOffset.new(3600, 0, :TSTA).hash ^ Timestamp.utc(1148949080).hash,
      t.hash)
  end
end
