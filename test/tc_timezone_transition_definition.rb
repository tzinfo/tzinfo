require File.join(File.expand_path(File.dirname(__FILE__)), 'test_utils')
require 'date'

include TZInfo

class TCTimezoneTransitionDefinition < Minitest::Test
  def test_initialize_timestamp_only
    assert_nothing_raised do
      TimezoneTransitionDefinition.new(TimezoneOffset.new(3600, 3600, :TDT),
        TimezoneOffset.new(3600, 0, :TST), 1148949080)
    end
  end

  def test_initialize_timestamp_and_datetime
    assert_nothing_raised do
      TimezoneTransitionDefinition.new(TimezoneOffset.new(3600, 3600, :TDT),
        TimezoneOffset.new(3600, 0, :TST), 1148949080, 5300392727, 2160)
    end
  end

  def test_initialize_datetime_only
    assert_nothing_raised do
      TimezoneTransitionDefinition.new(TimezoneOffset.new(3600, 3600, :TDT),
        TimezoneOffset.new(3600, 0, :TST), 5300392727, 2160)
    end
  end

  def test_at
    t1 = TimezoneTransitionDefinition.new(TimezoneOffset.new(3600, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), 1148949080)
    t2 = TimezoneTransitionDefinition.new(TimezoneOffset.new(3600, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), 5300392727, 2160)
    t3 = TimezoneTransitionDefinition.new(TimezoneOffset.new(3600, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), 1148949080, 5300392727, 2160)

    assert(TimeOrDateTime.new(1148949080).eql?(t1.at))
    assert(TimeOrDateTime.new(DateTime.new(2006, 5, 30, 0, 31, 20)).eql?(t2.at))
    assert(TimeOrDateTime.new(1148949080).eql?(t3.at))
  end

  def test_at_before_negative_32_bit
    t = TimezoneTransitionDefinition.new(TimezoneOffset.new(3600, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), -2147483649, 69573092117, 28800)

    assert(TimeOrDateTime.new(-2147483649).eql?(t.at))
  end

  def test_at_before_epoch
    t = TimezoneTransitionDefinition.new(TimezoneOffset.new(3600, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), -1, 210866759999, 86400)

    assert(TimeOrDateTime.new(-1).eql?(t.at))
  end

  def test_at_after_32bit
    t = TimezoneTransitionDefinition.new(TimezoneOffset.new(3600, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), 2147483648, 3328347557, 1350)

    assert(TimeOrDateTime.new(2147483648).eql?(t.at))
  end

  def test_eql_timestamp
    t1 = TimezoneTransitionDefinition.new(TimezoneOffset.new(3600, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), 1148949080)
    t2 = TimezoneTransitionDefinition.new(TimezoneOffset.new(3600, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), 1148949080)
    t3 = TimezoneTransitionDefinition.new(TimezoneOffset.new(3600, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), 5300392727, 2160)
    t4 = TimezoneTransitionDefinition.new(TimezoneOffset.new(3600, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), 1148949080, 5300392727, 2160)
    t5 = TimezoneTransitionDefinition.new(TimezoneOffset.new(3600, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), 1148949081)
    t6 = TimezoneTransitionDefinition.new(TimezoneOffset.new(3601, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), 1148949080)
    t7 = TimezoneTransitionDefinition.new(TimezoneOffset.new(3600, 3600, :TDT),
      TimezoneOffset.new(3601, 0, :TST), 1148949080)

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
    t1 = TimezoneTransitionDefinition.new(TimezoneOffset.new(3600, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), 5300392727, 2160)
    t2 = TimezoneTransitionDefinition.new(TimezoneOffset.new(3600, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), 5300392727, 2160)
    t3 = TimezoneTransitionDefinition.new(TimezoneOffset.new(3600, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), 1148949080)
    t4 = TimezoneTransitionDefinition.new(TimezoneOffset.new(3600, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), 1148949080, 5300392727, 2160)
    t5 = TimezoneTransitionDefinition.new(TimezoneOffset.new(3600, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), 7852433803, 3200)
    t6 = TimezoneTransitionDefinition.new(TimezoneOffset.new(3601, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), 5300392727, 2160)
    t7 = TimezoneTransitionDefinition.new(TimezoneOffset.new(3600, 3600, :TDT),
      TimezoneOffset.new(3601, 0, :TST), 5300392727, 2160)

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
    t1 = TimezoneTransitionDefinition.new(TimezoneOffset.new(3600, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), 1148949080, 5300392727, 2160)
    t2 = TimezoneTransitionDefinition.new(TimezoneOffset.new(3600, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), 1148949080, 5300392727, 2160)
    t3 = TimezoneTransitionDefinition.new(TimezoneOffset.new(3600, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), 1148949080)
    t4 = TimezoneTransitionDefinition.new(TimezoneOffset.new(3600, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), 5300392727, 2160)
    t5 = TimezoneTransitionDefinition.new(TimezoneOffset.new(3600, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), 1148952681, 7852433803, 3200)
    t6 = TimezoneTransitionDefinition.new(TimezoneOffset.new(3601, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), 1148949080, 5300392727, 2160)
    t7 = TimezoneTransitionDefinition.new(TimezoneOffset.new(3600, 3600, :TDT),
      TimezoneOffset.new(3601, 0, :TST), 1148949080, 5300392727, 2160)

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
    t1 = TimezoneTransitionDefinition.new(TimezoneOffset.new(3600, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), -2147483649, 69573092117, 28800)
    t2 = TimezoneTransitionDefinition.new(TimezoneOffset.new(3600, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), -2147483649, 69573092117, 28800)
    t3 = TimezoneTransitionDefinition.new(TimezoneOffset.new(3600, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), -2147483649)
    t4 = TimezoneTransitionDefinition.new(TimezoneOffset.new(3600, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), 69573092117, 28800)

    assert_equal(true, t1.eql?(t1))
    assert_equal(true, t1.eql?(t2))
    assert_equal(true, t1.eql?(t3))
    assert_equal(false, t1.eql?(t4))
    assert_equal(true, t3.eql?(t1))
    assert_equal(false, t4.eql?(t1))
  end

  def test_eql_timestamp_and_datetime_before_epoch
    t1 = TimezoneTransitionDefinition.new(TimezoneOffset.new(3600, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), -1, 210866759999, 86400)
    t2 = TimezoneTransitionDefinition.new(TimezoneOffset.new(3600, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), -1, 210866759999, 86400)
    t3 = TimezoneTransitionDefinition.new(TimezoneOffset.new(3600, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), -1)
    t4 = TimezoneTransitionDefinition.new(TimezoneOffset.new(3600, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), 210866759999, 86400)

    assert_equal(true, t1.eql?(t1))
    assert_equal(true, t1.eql?(t2))
    assert_equal(true, t1.eql?(t3))
    assert_equal(false, t1.eql?(t4))
    assert_equal(true, t3.eql?(t1))
    assert_equal(false, t4.eql?(t1))
  end

  def test_eql_timestamp_and_datetime_after_32bit
    t1 = TimezoneTransitionDefinition.new(TimezoneOffset.new(3600, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), 2147483648, 3328347557, 1350)
    t2 = TimezoneTransitionDefinition.new(TimezoneOffset.new(3600, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), 2147483648, 3328347557, 1350)
    t3 = TimezoneTransitionDefinition.new(TimezoneOffset.new(3600, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), 2147483648)
    t4 = TimezoneTransitionDefinition.new(TimezoneOffset.new(3600, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), 3328347557, 1350)

    assert_equal(true, t1.eql?(t1))
    assert_equal(true, t1.eql?(t2))
    assert_equal(true, t1.eql?(t3))
    assert_equal(false, t1.eql?(t4))
    assert_equal(true, t3.eql?(t1))
    assert_equal(false, t4.eql?(t1))
  end

  def test_hash
    t1 = TimezoneTransitionDefinition.new(TimezoneOffset.new(3600, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), 1148949080)
    t2 = TimezoneTransitionDefinition.new(TimezoneOffset.new(3600, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), 5300392727, 2160)
    t3 = TimezoneTransitionDefinition.new(TimezoneOffset.new(3600, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), 1148949080, 5300392727, 2160)
    t4 = TimezoneTransitionDefinition.new(TimezoneOffset.new(3600, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), -2147483649, 69573092117, 28800)
    t5 = TimezoneTransitionDefinition.new(TimezoneOffset.new(3600, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), -1, 210866759999, 86400)
    t6 = TimezoneTransitionDefinition.new(TimezoneOffset.new(3600, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), 2147483648, 3328347557, 1350)

    assert_equal(TimezoneOffset.new(3600, 3600, :TDT).hash ^
      TimezoneOffset.new(3600, 0, :TST).hash ^ 1148949080.hash ^ nil.hash,
      t1.hash)
    assert_equal(TimezoneOffset.new(3600, 3600, :TDT).hash ^
      TimezoneOffset.new(3600, 0, :TST).hash ^ 5300392727.hash ^ 2160.hash,
      t2.hash)
    assert_equal(TimezoneOffset.new(3600, 3600, :TDT).hash ^
      TimezoneOffset.new(3600, 0, :TST).hash ^ 1148949080.hash ^ nil.hash,
      t3.hash)
    assert_equal(TimezoneOffset.new(3600, 3600, :TDT).hash ^
      TimezoneOffset.new(3600, 0, :TST).hash ^ -2147483649.hash ^ nil.hash,
      t4.hash)
    assert_equal(TimezoneOffset.new(3600, 3600, :TDT).hash ^
      TimezoneOffset.new(3600, 0, :TST).hash ^ -1.hash ^ nil.hash,
      t5.hash)
    assert_equal(TimezoneOffset.new(3600, 3600, :TDT).hash ^
      TimezoneOffset.new(3600, 0, :TST).hash ^ 2147483648.hash ^ nil.hash,
      t6.hash)
  end

  def test_new_datetime
    # Tests for the private new_datetime method. Copied here when
    # RubyCoreSupport.datetime_new! was eliminated.
    ttd = TimezoneTransitionDefinition.new(TimezoneOffset.new(3600, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), 1148949080)
    assert_equal(DateTime.new(2008,10,5,12,0,0, 0, Date::ITALY), ttd.send(:new_datetime, 2454745))
    assert_equal(DateTime.new(2008,10,5,20,30,0, 0, Date::ITALY), ttd.send(:new_datetime, Rational(117827777, 48)))
    assert_equal(DateTime.new(2008,10,6,6,26,21, 0, Date::ITALY), ttd.send(:new_datetime, Rational(70696678127,28800)))
    assert_equal(DateTime.new(-4712,1,1,12,0,0, 0, Date::ITALY), ttd.send(:new_datetime, 0))
    assert_equal(DateTime.new(-4713,12,31,23,58,59, 0, Date::ITALY), ttd.send(:new_datetime, Rational(-43261, 86400)))
    assert_equal(DateTime.new(-4713,12,30,23,58,59, 0, Date::ITALY), ttd.send(:new_datetime, Rational(-129661, 86400)))
  end
end
