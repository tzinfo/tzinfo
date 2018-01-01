# frozen_string_literal: true

require File.join(File.expand_path(File.dirname(__FILE__)), 'test_utils')
require 'date'

include TZInfo

class TCTimestamp < Minitest::Test
  class TestTimestampSubclass < Timestamp
  end

  def test_initialize_timestamp_only
    t = Timestamp.new(1476316800)
    assert_equal(1476316800, t.value)
    assert_kind_of(Integer, t.sub_second)
    assert_equal(0, t.sub_second)
    assert_nil(t.utc_offset)
    assert_nil(t.utc?)
  end

  def test_initialize_sub_second
    t = Timestamp.new(1476316800, Rational(1, 10))
    assert_equal(Rational(1, 10), t.sub_second)
  end

  def test_initialize_sub_second_zero
    t = Timestamp.new(1476316800, 0)
    assert_kind_of(Integer, t.sub_second)
    assert_equal(0, t.sub_second)
  end

  def test_initialize_zero_utc_offset
    t = Timestamp.new(1476316800, 0, 0)
    assert_equal(1476316800, t.value)
    assert_equal(0, t.utc_offset)
    assert_equal(false, t.utc?)
  end

  def test_initialize_non_zero_utc_offset
    t = Timestamp.new(1476316800, 0, 3600)
    assert_equal(1476316800, t.value)
    assert_equal(3600, t.utc_offset)
    assert_equal(false, t.utc?)
  end

  def test_initialize_utc
    t = Timestamp.new(1476316800, 0, :utc)
    assert_equal(1476316800, t.value)
    assert_equal(0, t.utc_offset)
    assert_equal(true, t.utc?)
  end

  def test_initialize_value_nil
    error = assert_raises(ArgumentError) { Timestamp.new(nil) }
    assert_equal('value must be an Integer', error.message)
  end

  def test_initialize_valuenot_integer
    error = assert_raises(ArgumentError) { Timestamp.new(1476316800.0) }
    assert_equal('value must be an Integer', error.message)
  end

  def test_initialize_sub_second_nil
    error = assert_raises(ArgumentError) { Timestamp.new(1476316800, nil) }
    assert_equal('sub_second must be a Rational or the Integer 0', error.message)
  end

  def test_initialize_sub_second_not_integer_or_rational
    error = assert_raises(ArgumentError) { Timestamp.new(1476316800, 0.1) }
    assert_equal('sub_second must be a Rational or the Integer 0', error.message)
  end

  def test_initialize_sub_second_integer_not_zero
    error = assert_raises(ArgumentError) { Timestamp.new(1476316800, 1) }
    assert_equal('sub_second must be a Rational or the Integer 0', error.message)
  end

  def test_initialize_sub_second_less_than_zero
    error = assert_raises(RangeError) { Timestamp.new(1476316800, Rational(-1, 10)) }
    assert_equal('sub_second must be >= 0 and < 1', error.message)
  end

  def test_initialize_sub_second_greater_than_one
    error = assert_raises(RangeError) { Timestamp.new(1476316800, Rational(11, 10)) }
    assert_equal('sub_second must be >= 0 and < 1', error.message)
  end

  def test_initialize_utc_offset_not_integer_or_utc
    [1.0, :zero].each do |utc_offset|
      error = assert_raises(ArgumentError) { Timestamp.new(1476316800, 0, utc_offset) }
      assert_equal('utc_offset must be an Integer, :utc or nil', error.message)
    end
  end

  def test_add_operator_without_offset
    t = Timestamp.new(1476316800, Rational(1, 10))
    t1 = t + 0
    t2 = t + 1
    t3 = t + (-1)

    assert_same(t, t1)

    assert_equal(1476316801, t2.value)
    assert_equal(1476316799, t3.value)

    assert_equal(Rational(1, 10), t2.sub_second)
    assert_equal(Rational(1, 10), t3.sub_second)

    assert_nil(t2.utc_offset)
    assert_nil(t3.utc_offset)

    assert_nil(t2.utc?)
    assert_nil(t3.utc?)
  end

  def test_add_operator_with_zero_offset
    t = Timestamp.new(1476316800, Rational(1, 10), 0)
    t1 = t + 0
    t2 = t + 1
    t3 = t + (-1)

    assert_same(t, t1)

    assert_equal(1476316801, t2.value)
    assert_equal(1476316799, t3.value)

    assert_equal(Rational(1, 10), t2.sub_second)
    assert_equal(Rational(1, 10), t3.sub_second)

    assert_equal(0, t2.utc_offset)
    assert_equal(0, t3.utc_offset)

    assert_equal(false, t2.utc?)
    assert_equal(false, t3.utc?)
  end

  def test_add_operator_with_non_zero_offset
    t = Timestamp.new(1476316800, Rational(1, 10), 3600)
    t1 = t + 0
    t2 = t + 1
    t3 = t + (-1)

    assert_same(t, t1)

    assert_equal(1476316801, t2.value)
    assert_equal(1476316799, t3.value)

    assert_equal(Rational(1, 10), t2.sub_second)
    assert_equal(Rational(1, 10), t3.sub_second)

    assert_equal(3600, t2.utc_offset)
    assert_equal(3600, t3.utc_offset)

    assert_equal(false, t2.utc?)
    assert_equal(false, t3.utc?)
  end

  def test_add_operator_with_utc_offset
    t = Timestamp.new(1476316800, Rational(1, 10), :utc)
    t1 = t + 0
    t2 = t + 1
    t3 = t + (-1)

    assert_same(t, t1)

    assert_equal(1476316801, t2.value)
    assert_equal(1476316799, t3.value)

    assert_equal(Rational(1, 10), t2.sub_second)
    assert_equal(Rational(1, 10), t3.sub_second)

    assert_equal(0, t2.utc_offset)
    assert_equal(0, t3.utc_offset)

    assert_equal(true, t2.utc?)
    assert_equal(true, t3.utc?)
  end

  def test_add_operator_nil
    error = assert_raises(ArgumentError) { Timestamp.new(1476316800) + nil }
    assert_equal('seconds must be an Integer', error.message)
  end

  def test_add_operator_non_integer
    error = assert_raises(ArgumentError) { Timestamp.new(1476316800) + 1.0 }
    assert_equal('seconds must be an Integer', error.message)
  end

  def test_subtract_operator_without_offset
    t = Timestamp.new(1476316800, Rational(1, 10))
    t1 = t - 0
    t2 = t - 1
    t3 = t - (-1)

    assert_same(t, t1)

    assert_equal(1476316799, t2.value)
    assert_equal(1476316801, t3.value)

    assert_equal(Rational(1, 10), t2.sub_second)
    assert_equal(Rational(1, 10), t3.sub_second)

    assert_nil(t2.utc_offset)
    assert_nil(t3.utc_offset)

    assert_nil(t2.utc?)
    assert_nil(t3.utc?)
  end

  def test_subtract_operator_with_zero_offset
    t = Timestamp.new(1476316800, Rational(1, 10), 0)
    t1 = t - 0
    t2 = t - 1
    t3 = t - (-1)

    assert_same(t, t1)

    assert_equal(1476316799, t2.value)
    assert_equal(1476316801, t3.value)

    assert_equal(Rational(1, 10), t2.sub_second)
    assert_equal(Rational(1, 10), t3.sub_second)

    assert_equal(0, t2.utc_offset)
    assert_equal(0, t3.utc_offset)

    assert_equal(false, t2.utc?)
    assert_equal(false, t3.utc?)
  end

  def test_subtract_operator_with_non_zero_offset
    t = Timestamp.new(1476316800, Rational(1, 10), 3600)
    t1 = t - 0
    t2 = t - 1
    t3 = t - (-1)

    assert_same(t, t1)

    assert_equal(1476316799, t2.value)
    assert_equal(1476316801, t3.value)

    assert_equal(Rational(1, 10), t2.sub_second)
    assert_equal(Rational(1, 10), t3.sub_second)

    assert_equal(3600, t2.utc_offset)
    assert_equal(3600, t3.utc_offset)

    assert_equal(false, t2.utc?)
    assert_equal(false, t3.utc?)
  end

  def test_subtract_operator_with_utc_offset
    t = Timestamp.new(1476316800, Rational(1, 10), :utc)
    t1 = t - 0
    t2 = t - 1
    t3 = t - (-1)

    assert_same(t, t1)

    assert_equal(1476316799, t2.value)
    assert_equal(1476316801, t3.value)

    assert_equal(Rational(1, 10), t2.sub_second)
    assert_equal(Rational(1, 10), t3.sub_second)

    assert_equal(0, t2.utc_offset)
    assert_equal(0, t3.utc_offset)

    assert_equal(true, t2.utc?)
    assert_equal(true, t3.utc?)
  end

  def test_subtract_operator_nil
    error = assert_raises(ArgumentError) { Timestamp.new(1476316800) - nil }
    assert_equal('seconds must be an Integer', error.message)
  end

  def test_subtract_operator_non_integer
    error = assert_raises(ArgumentError) { Timestamp.new(1476316800) - 1.0 }
    assert_equal('seconds must be an Integer', error.message)
  end

  def test_add_and_set_utc_offset_utc
    t1 = Timestamp.new(1476316800, Rational(1, 10))
    t2 = Timestamp.new(1476316800, Rational(1, 10), 0)
    t3 = Timestamp.new(1476316800, Rational(1, 10), :utc)

    r1 = t1.add_and_set_utc_offset(-1, :utc)
    r2 = t2.add_and_set_utc_offset(1, :utc)
    r3 = t3.add_and_set_utc_offset(2, :utc)

    assert_equal(1476316799, r1.value)
    assert_equal(1476316801, r2.value)
    assert_equal(1476316802, r3.value)

    assert_equal(Rational(1, 10), r1.sub_second)
    assert_equal(Rational(1, 10), r2.sub_second)
    assert_equal(Rational(1, 10), r3.sub_second)

    assert_equal(0, r1.utc_offset)
    assert_equal(0, r2.utc_offset)
    assert_equal(0, r3.utc_offset)

    assert_equal(true, r1.utc?)
    assert_equal(true, r2.utc?)
    assert_equal(true, r3.utc?)
  end

  def test_add_and_set_utc_offset_zero
    t1 = Timestamp.new(1476316800, Rational(1, 10))
    t2 = Timestamp.new(1476316800, Rational(1, 10), 0)
    t3 = Timestamp.new(1476316800, Rational(1, 10), :utc)

    r1 = t1.add_and_set_utc_offset(-1, 0)
    r2 = t2.add_and_set_utc_offset(1, 0)
    r3 = t3.add_and_set_utc_offset(2, 0)

    assert_equal(1476316799, r1.value)
    assert_equal(1476316801, r2.value)
    assert_equal(1476316802, r3.value)

    assert_equal(Rational(1, 10), r1.sub_second)
    assert_equal(Rational(1, 10), r2.sub_second)
    assert_equal(Rational(1, 10), r3.sub_second)

    assert_equal(0, r1.utc_offset)
    assert_equal(0, r2.utc_offset)
    assert_equal(0, r3.utc_offset)

    assert_equal(false, r1.utc?)
    assert_equal(false, r2.utc?)
    assert_equal(false, r3.utc?)
  end

  def test_add_and_set_utc_offset_non_zero
    t1 = Timestamp.new(1476316800, Rational(1, 10))
    t2 = Timestamp.new(1476316800, Rational(1, 10), 0)
    t3 = Timestamp.new(1476316800, Rational(1, 10), :utc)

    r1 = t1.add_and_set_utc_offset(-1, 3600)
    r2 = t2.add_and_set_utc_offset(1, 3600)
    r3 = t3.add_and_set_utc_offset(2, 3600)

    assert_equal(1476316799, r1.value)
    assert_equal(1476316801, r2.value)
    assert_equal(1476316802, r3.value)

    assert_equal(Rational(1, 10), r1.sub_second)
    assert_equal(Rational(1, 10), r2.sub_second)
    assert_equal(Rational(1, 10), r3.sub_second)

    assert_equal(3600, r1.utc_offset)
    assert_equal(3600, r2.utc_offset)
    assert_equal(3600, r3.utc_offset)

    assert_equal(false, r1.utc?)
    assert_equal(false, r2.utc?)
    assert_equal(false, r3.utc?)
  end

  def test_add_and_set_utc_offset_unspecified
    t1 = Timestamp.new(1476316800, Rational(1, 10))
    t2 = Timestamp.new(1476316800, Rational(1, 10), 0)
    t3 = Timestamp.new(1476316800, Rational(1, 10), :utc)

    r1 = t1.add_and_set_utc_offset(-1, nil)
    r2 = t2.add_and_set_utc_offset(1, nil)
    r3 = t3.add_and_set_utc_offset(2, nil)

    assert_equal(1476316799, r1.value)
    assert_equal(1476316801, r2.value)
    assert_equal(1476316802, r3.value)

    assert_equal(Rational(1, 10), r1.sub_second)
    assert_equal(Rational(1, 10), r2.sub_second)
    assert_equal(Rational(1, 10), r3.sub_second)

    assert_nil(r1.utc_offset)
    assert_nil(r2.utc_offset)
    assert_nil(r3.utc_offset)

    assert_nil(r1.utc?)
    assert_nil(r2.utc?)
    assert_nil(r3.utc?)
  end

  def test_add_and_set_utc_offset_add_zero_same_offset
    t1 = Timestamp.new(1476316800, Rational(1, 10))
    t2 = Timestamp.new(1476316800, Rational(1, 10), 0)
    t3 = Timestamp.new(1476316800, Rational(1, 10), :utc)

    r1 = t1.add_and_set_utc_offset(0, nil)
    r2 = t2.add_and_set_utc_offset(0, 0)
    r3 = t3.add_and_set_utc_offset(0, :utc)

    assert_same(t1, r1)
    assert_same(t2, r2)
    assert_same(t3, r3)
  end

  def test_add_and_set_utc_offset_seconds_nil
    error = assert_raises(ArgumentError) { Timestamp.new(1476316800).add_and_set_utc_offset(nil, 0) }
    assert_equal('seconds must be an Integer', error.message)
  end

  def test_add_and_set_utc_offset_seconds_non_integer
    error = assert_raises(ArgumentError) { Timestamp.new(1476316800).add_and_set_utc_offset(1.0, 0) }
    assert_equal('seconds must be an Integer', error.message)
  end

  def test_add_and_set_utc_offset_utc_offset_not_integer_or_utc
    [1.0, :zero].each do |utc_offset|
      error = assert_raises(ArgumentError) { Timestamp.new(1476316800).add_and_set_utc_offset(1, utc_offset) }
      assert_equal('utc_offset must be an Integer, :utc or nil', error.message)
    end
  end

  def test_utc_from_utc
    t = Timestamp.new(1476316800, 0, :utc)
    assert_same(t, t.utc)
  end

  def test_utc_from_zero_offset
    t = Timestamp.new(1476316800, 0, 0).utc
    assert_equal(1476316800, t.value)
    assert_equal(0, t.sub_second)
    assert_equal(0, t.utc_offset)
    assert_equal(true, t.utc?)
  end

  def test_utc_from_non_zero_offset
    t = Timestamp.new(1476316800, 0, 3600).utc
    assert_equal(1476316800, t.value)
    assert_equal(0, t.sub_second)
    assert_equal(0, t.utc_offset)
    assert_equal(true, t.utc?)
  end

  def test_utc_from_unspecified_offset
    t = Timestamp.new(1476316800, 0).utc
    assert_equal(1476316800, t.value)
    assert_equal(0, t.sub_second)
    assert_equal(0, t.utc_offset)
    assert_equal(true, t.utc?)
  end

  def test_utc_sub_second
    t = Timestamp.new(1476316800, Rational(1, 10), 0).utc
    assert_equal(1476316800, t.value)
    assert_equal(Rational(1, 10), t.sub_second)
    assert_equal(0, t.utc_offset)
    assert_equal(true, t.utc?)
  end

  def test_to_time
    assert_equal_with_offset(Time.utc(2016,10,13,0,0,1), Timestamp.new(1476316801).to_time)
    assert_equal_with_offset(Time.utc(2016,10,13,0,0,1,Rational(100_000,1)), Timestamp.new(1476316801, Rational(1,10)).to_time)
    assert_equal_with_offset(Time.new(2016,10,13,0,0,1,0), Timestamp.new(1476316801, 0, 0).to_time)
    assert_equal_with_offset(Time.new(2016,10,13,0,0,1+Rational(1,10), 0), Timestamp.new(1476316801, Rational(1,10), 0).to_time)
    assert_equal_with_offset(Time.utc(2016,10,13,0,0,1), Timestamp.new(1476316801, 0, :utc).to_time)
    assert_equal_with_offset(Time.utc(2016,10,13,0,0,1,Rational(100_000,1)), Timestamp.new(1476316801, Rational(1,10), :utc).to_time)
    assert_equal_with_offset(Time.new(2016,10,13,1,0,1,3600), Timestamp.new(1476316801, 0, 3600).to_time)
    assert_equal_with_offset(Time.new(2016,10,13,1,0,Rational(11,10),3600), Timestamp.new(1476316801, Rational(1,10), 3600).to_time)
  end

  def test_to_datetime
    assert_equal_with_offset(DateTime.new(2016,10,13,0,0,1), Timestamp.new(1476316801).to_datetime)
    assert_equal_with_offset(DateTime.new(2016,10,13,0,0,Rational(11,10)), Timestamp.new(1476316801, Rational(1,10)).to_datetime)
    assert_equal_with_offset(DateTime.new(2016,10,13,0,0,1), Timestamp.new(1476316801, 0, 0).to_datetime)
    assert_equal_with_offset(DateTime.new(2016,10,13,0,0,Rational(11,10)), Timestamp.new(1476316801, Rational(1,10), 0).to_datetime)
    assert_equal_with_offset(DateTime.new(2016,10,13,0,0,1), Timestamp.new(1476316801, 0, :utc).to_datetime)
    assert_equal_with_offset(DateTime.new(2016,10,13,0,0,Rational(11,10)), Timestamp.new(1476316801, Rational(1,10), :utc).to_datetime)
    assert_equal_with_offset(DateTime.new(2016,10,13,1,0,1,Rational(1,24)), Timestamp.new(1476316801, 0, 3600).to_datetime)
    assert_equal_with_offset(DateTime.new(2016,10,13,1,0,Rational(11,10),Rational(1,24)), Timestamp.new(1476316801, Rational(1,10), 3600).to_datetime)
  end

  def test_to_i
    assert_equal(1476316801, Timestamp.new(1476316801).to_i)
    assert_equal(1476316801, Timestamp.new(1476316801, Rational(1,10)).to_i)
    assert_equal(1476316801, Timestamp.new(1476316801, 0, 0).to_i)
    assert_equal(1476316801, Timestamp.new(1476316801, Rational(1,10), 0).to_i)
    assert_equal(1476316801, Timestamp.new(1476316801, 0, :utc).to_i)
    assert_equal(1476316801, Timestamp.new(1476316801, Rational(1,10), :utc).to_i)
    assert_equal(1476316801, Timestamp.new(1476316801, 0, 3600).to_i)
    assert_equal(1476316801, Timestamp.new(1476316801, Rational(1,10), 3600).to_i)
  end

  def test_strftime
    # Timestamp#strftime calls Time#strftime. No need to test formats exhaustively.
    assert_equal('2016-10-13 00:00:00.100 +0000 %', Timestamp.new(1476316800, Rational(1,10)       ).strftime('%Y-%m-%d %H:%M:%S.%L %z %%'))
    assert_equal('2016-10-13 00:00:00.100 +0000 %', Timestamp.new(1476316800, Rational(1,10),  :utc).strftime('%Y-%m-%d %H:%M:%S.%L %z %%'))
    assert_equal('2016-10-13 00:00:00.100 +0000 %', Timestamp.new(1476316800, Rational(1,10),     0).strftime('%Y-%m-%d %H:%M:%S.%L %z %%'))
    assert_equal('2016-10-13 01:00:00.100 +0100 %', Timestamp.new(1476316800, Rational(1,10),  3600).strftime('%Y-%m-%d %H:%M:%S.%L %z %%'))
    assert_equal('2016-10-12 23:00:00.100 -0100 %', Timestamp.new(1476316800, Rational(1,10), -3600).strftime('%Y-%m-%d %H:%M:%S.%L %z %%'))
  end

  def test_strftime_nil_format
    t = Timestamp.new(1476316800, Rational(1,10))
    error = assert_raises(ArgumentError) { t.strftime(nil) }
    assert_equal('format must be specified', error.message)
  end

  def test_to_s_without_offset
    assert_equal('1476316800', Timestamp.new(1476316800).to_s)
  end

  def test_to_s_utc
    assert_equal('1476316800 UTC', Timestamp.new(1476316800, 0, :utc).to_s)
  end

  def test_to_s_offset
    assert_equal('1476316800 +00:00', Timestamp.new(1476316800, 0, 0).to_s)
    assert_equal('1476320400 +01:00 (1476316800 UTC)', Timestamp.new(1476316800, 0, 3600).to_s)
    assert_equal('1476313200 -01:00 (1476316800 UTC)', Timestamp.new(1476316800, 0, -3600).to_s)
    assert_equal('1476318300 +00:25 (1476316800 UTC)', Timestamp.new(1476316800, 0, 1500).to_s)
    assert_equal('1476315300 -00:25 (1476316800 UTC)', Timestamp.new(1476316800, 0, -1500).to_s)
    assert_equal('1476318303 +00:25:03 (1476316800 UTC)', Timestamp.new(1476316800, 0, 1503).to_s)
    assert_equal('1476315297 -00:25:03 (1476316800 UTC)', Timestamp.new(1476316800, 0, -1503).to_s)
    assert_equal('1476406800 +25:00 (1476316800 UTC)', Timestamp.new(1476316800, 0, 90000).to_s)
    assert_equal('1476226800 -25:00 (1476316800 UTC)', Timestamp.new(1476316800, 0, -90000).to_s)
  end

  def test_to_s_sub_second
    assert_equal('1476316800 1/5', Timestamp.new(1476316800, Rational(2, 10)).to_s)
  end

  def test_to_s_utc_sub_second
    assert_equal('1476316800 1/5 UTC', Timestamp.new(1476316800, Rational(2, 10), :utc).to_s)
  end

  def test_to_s_offset_sub_second
    assert_equal('1476316800 1/5 +00:00', Timestamp.new(1476316800, Rational(2, 10), 0).to_s)
    assert_equal('1476320400 1/5 +01:00 (1476316800 1/5 UTC)', Timestamp.new(1476316800, Rational(2, 10), 3600).to_s)
  end

  def test_compare
    assert_equal(-1, Timestamp.new(1476313200) <=> Timestamp.new(1476316800))
    assert_equal(0, Timestamp.new(1476316800) <=> Timestamp.new(1476316800))
    assert_equal(1, Timestamp.new(1476316800) <=> Timestamp.new(1476313200))

    assert_equal(-1, Timestamp.new(1476316800, Rational(100_000_000, 1_000_000_000)) <=> Timestamp.new(1476316800, Rational(100_000_001, 1_000_000_000)))
    assert_equal(0, Timestamp.new(1476316800, Rational(100_000_001, 1_000_000_000)) <=> Timestamp.new(1476316800, Rational(100_000_001, 1_000_000_000)))
    assert_equal(1, Timestamp.new(1476316800, Rational(100_000_001, 1_000_000_000)) <=> Timestamp.new(1476316800, Rational(100_000_000, 1_000_000_000)))

    assert_equal(-1, Timestamp.new(1476313200, 0, 3600) <=> Timestamp.new(1476316800, 0, 0))
    assert_equal(0, Timestamp.new(1476316800, 0, 3600) <=> Timestamp.new(1476316800, 0, 0))
    assert_equal(1, Timestamp.new(1476316800, 0, 0) <=> Timestamp.new(1476313200, 0, 3600))

    assert_equal(-1, Timestamp.new(1476313200, 0, 3600) <=> Timestamp.new(1476316800, 0, :utc))
    assert_equal(0, Timestamp.new(1476316800, 0, 3600) <=> Timestamp.new(1476316800, 0, :utc))
    assert_equal(1, Timestamp.new(1476316800, 0, :utc) <=> Timestamp.new(1476313200, 0, 3600))

    assert_equal(-1, Timestamp.new(1476316800, Rational(100_000_000, 1_000_000_000), 3600) <=> Timestamp.new(1476316800, Rational(100_000_001, 1_000_000_000), 0))
    assert_equal(0, Timestamp.new(1476316800, Rational(100_000_001, 1_000_000_000), 3600) <=> Timestamp.new(1476316800, Rational(100_000_001, 1_000_000_000), 0))
    assert_equal(1, Timestamp.new(1476316800, Rational(100_000_001, 1_000_000_000), 0) <=> Timestamp.new(1476316800, Rational(100_000_000, 1_000_000_000), 3600))

    assert_equal(-1, Timestamp.new(1476316800, Rational(100_000_000, 1_000_000_000), 3600) <=> Timestamp.new(1476316800, Rational(100_000_001, 1_000_000_000), :utc))
    assert_equal(0, Timestamp.new(1476316800, Rational(100_000_001, 1_000_000_000), 3600) <=> Timestamp.new(1476316800, Rational(100_000_001, 1_000_000_000), :utc))
    assert_equal(1, Timestamp.new(1476316800, Rational(100_000_001, 1_000_000_000), :utc) <=> Timestamp.new(1476316800, Rational(100_000_000, 1_000_000_000), 3600))

    assert_nil(Timestamp.new(1476316800) <=> Timestamp.new(1476316800, 0, 0))
    assert_nil(Timestamp.new(1476316800, 0, 0) <=> Timestamp.new(1476316800))

    assert_nil(Timestamp.new(1476316800) <=> Timestamp.new(1476316800, 0, :utc))
    assert_nil(Timestamp.new(1476316800, 0, :utc) <=> Timestamp.new(1476316800))

    assert_nil(Timestamp.new(1476316800) <=> Object.new)
    assert_nil(Timestamp.new(1476316800) <=> 1476316800)
  end

  def test_eql
    assert_equal(false, Timestamp.new(1476313200).eql?(Timestamp.new(1476316800)))
    assert_equal(true, Timestamp.new(1476316800).eql?(Timestamp.new(1476316800)))
    assert_equal(false, Timestamp.new(1476316800).eql?(Timestamp.new(1476313200)))

    assert_equal(false, Timestamp.new(1476316800, Rational(100_000_000, 1_000_000_000)).eql?(Timestamp.new(1476316800, Rational(100_000_001, 1_000_000_000))))
    assert_equal(true, Timestamp.new(1476316800, Rational(100_000_001, 1_000_000_000)).eql?(Timestamp.new(1476316800, Rational(100_000_001, 1_000_000_000))))
    assert_equal(false, Timestamp.new(1476316800, Rational(100_000_001, 1_000_000_000)).eql?(Timestamp.new(1476316800, Rational(100_000_000, 1_000_000_000))))

    assert_equal(false, Timestamp.new(1476313200, 0, 3600).eql?(Timestamp.new(1476316800, 0, 0)))
    assert_equal(true, Timestamp.new(1476316800, 0, 3600).eql?(Timestamp.new(1476316800, 0, 0)))
    assert_equal(false, Timestamp.new(1476316800, 0, 0).eql?(Timestamp.new(1476313200, 0, 3600)))

    assert_equal(false, Timestamp.new(1476313200, 0, 3600).eql?(Timestamp.new(1476316800, 0, :utc)))
    assert_equal(true, Timestamp.new(1476316800, 0, 3600).eql?(Timestamp.new(1476316800, 0, :utc)))
    assert_equal(false, Timestamp.new(1476316800, 0, :utc).eql?(Timestamp.new(1476313200, 0, 3600)))

    assert_equal(false, Timestamp.new(1476316800, Rational(100_000_000, 1_000_000_000), 3600).eql?(Timestamp.new(1476316800, Rational(100_000_001, 1_000_000_000), 0)))
    assert_equal(true, Timestamp.new(1476316800, Rational(100_000_001, 1_000_000_000), 3600).eql?(Timestamp.new(1476316800, Rational(100_000_001, 1_000_000_000), 0)))
    assert_equal(false, Timestamp.new(1476316800, Rational(100_000_001, 1_000_000_000), 0).eql?(Timestamp.new(1476316800, Rational(100_000_000, 1_000_000_000), 3600)))

    assert_equal(false, Timestamp.new(1476316800, Rational(100_000_000, 1_000_000_000), 3600).eql?(Timestamp.new(1476316800, Rational(100_000_001, 1_000_000_000), :utc)))
    assert_equal(true, Timestamp.new(1476316800, Rational(100_000_001, 1_000_000_000), 3600).eql?(Timestamp.new(1476316800, Rational(100_000_001, 1_000_000_000), :utc)))
    assert_equal(false, Timestamp.new(1476316800, Rational(100_000_001, 1_000_000_000), :utc).eql?(Timestamp.new(1476316800, Rational(100_000_000, 1_000_000_000), 3600)))

    assert_equal(false, Timestamp.new(1476316800).eql?(Timestamp.new(1476316800, 0, 0)))
    assert_equal(false, Timestamp.new(1476316800, 0, 0).eql?(Timestamp.new(1476316800)))

    assert_equal(false, Timestamp.new(1476316800).eql?(Timestamp.new(1476316800, 0, :utc)))
    assert_equal(false, Timestamp.new(1476316800, 0, :utc).eql?(Timestamp.new(1476316800)))

    assert_equal(false, Timestamp.new(1476316800).eql?(Object.new))
    assert_equal(false, Timestamp.new(1476316800).eql?(1476316800))
  end

  def test_hash
    assert_equal([1476316800, 0, false].hash, Timestamp.new(1476316800).hash)
    assert_equal([1476316800, 0, true].hash, Timestamp.new(1476316800, 0, 0).hash)
    assert_equal([1476316800, 0, true].hash, Timestamp.new(1476316800, 0, :utc).hash)
    assert_equal([1476316800, 0, true].hash, Timestamp.new(1476316800, Rational(0, 1), 0).hash)
    assert_equal([1476316800, Rational(1, 10), true].hash, Timestamp.new(1476316800, Rational(1, 10), 3600).hash)
  end

  def test_inspect
    assert_equal('#<TZInfo::Timestamp: @value=1476316800, @sub_second=0, @utc_offset=0, @utc=false>', Timestamp.new(1476316800, 0, 0).inspect)
    assert_equal('#<TZInfo::Timestamp: @value=1476316800, @sub_second=0, @utc_offset=0, @utc=true>', Timestamp.new(1476316800, Rational(0, 1), :utc).inspect)
    assert_equal('#<TZInfo::Timestamp: @value=1476316800, @sub_second=1/10, @utc_offset=3600, @utc=false>', Timestamp.new(1476316800, Rational(1, 10), 3600).inspect)
    assert_equal('#<TZInfo::Timestamp: @value=1476316800, @sub_second=1/10, @utc_offset=nil, @utc=nil>', Timestamp.new(1476316800, Rational(1, 10), nil).inspect)
  end

  # Test Timestamp.for with and without a block.
  def for_test(*args)
    t = Timestamp.for(*args)
    assert_kind_of(Timestamp, t)
    yield t

    block_called = 0
    block_result = Timestamp.for(*args) do |t2|
      block_called += 1
      assert_kind_of(Timestamp, t2)
      yield t2
      t2
    end

    assert_equal(1, block_called)

    expected_class = args[0].class
    expected_class = Timestamp if expected_class == TestTimestampSubclass
    assert_kind_of(expected_class, block_result)
  end

  def test_for_timestamp_ignore_offset_utc
    for_test(Timestamp.new(1476316800, 0, :utc), :ignore) do |t|
      assert_equal(1476316800, t.value)
      assert_equal(0, t.sub_second)
      assert_nil(t.utc_offset)
      assert_nil(t.utc?)
    end
  end

  def test_for_timestamp_ignore_offset_with_zero_offset
    for_test(Timestamp.new(1476316800, 0, 0), :ignore) do |t|
      assert_equal(1476316800, t.value)
      assert_equal(0, t.sub_second)
      assert_nil(t.utc_offset)
      assert_nil(t.utc?)
    end
  end

  def test_for_timestamp_ignore_offset_with_offset
    for_test(Timestamp.new(1476316800, 0, 3600), :ignore) do |t|
      assert_equal(1476320400, t.value)
      assert_equal(0, t.sub_second)
      assert_nil(t.utc_offset)
      assert_nil(t.utc?)
    end
  end

  def test_for_timestamp_ignore_offset_sub_second
    for_test(Timestamp.new(1476316800, Rational(1, 10), 3600), :ignore) do |t|
      assert_equal(1476320400, t.value)
      assert_equal(Rational(1, 10), t.sub_second)
      assert_nil(t.utc_offset)
      assert_nil(t.utc?)
    end
  end

  def test_for_timestamp_ignore_offset_no_offset
    orig = Timestamp.new(1476316800)
    for_test(orig, :ignore) {|t| assert_same(orig, t) }
  end

  def test_for_timestamp_ignore_offset_subclass_no_offset
    for_test(TestTimestampSubclass.new(1476316800, Rational(1, 10)), :ignore) do |t|
      assert_equal(Timestamp, t.class)
      assert_equal(1476316800, t.value)
      assert_equal(Rational(1, 10), t.sub_second)
      assert_nil(t.utc_offset)
      assert_nil(t.utc?)
    end
  end

  def test_for_timestamp_treat_offset_as_utc_utc
    orig = Timestamp.new(1476316800, 0, :utc)
    for_test(orig, :treat_as_utc) {|t| assert_same(orig, t) }
  end

  def test_for_timestamp_treat_offset_as_utc_with_zero_offset
    for_test(Timestamp.new(1476316800, 0, 0), :treat_as_utc) do |t|
      assert_equal(1476316800, t.value)
      assert_equal(0, t.sub_second)
      assert_equal(0, t.utc_offset)
      assert_equal(true, t.utc?)
    end
  end

  def test_for_timestamp_treat_offset_as_utc_with_offset
    for_test(Timestamp.new(1476316800, 0, 3600), :treat_as_utc) do |t|
      assert_equal(1476320400, t.value)
      assert_equal(0, t.sub_second)
      assert_equal(0, t.utc_offset)
      assert_equal(true, t.utc?)
    end
  end

  def test_for_timestamp_treat_offset_as_utc_sub_second
    for_test(Timestamp.new(1476316800, Rational(1, 10), 3600), :treat_as_utc) do |t|
      assert_equal(1476320400, t.value)
      assert_equal(Rational(1, 10), t.sub_second)
      assert_equal(0, t.utc_offset)
      assert_equal(true, t.utc?)
    end
  end

  def test_for_timestamp_treat_offset_as_utc_no_offset
    for_test(Timestamp.new(1476316800), :treat_as_utc) do |t|
      assert_equal(1476316800, t.value)
      assert_equal(0, t.sub_second)
      assert_equal(0, t.utc_offset)
      assert_equal(true, t.utc?)
    end
  end

  def test_for_timestamp_treat_offset_as_utc_subclass_utc
    for_test(TestTimestampSubclass.new(1476316800, Rational(1, 10), :utc), :treat_as_utc) do |t|
      assert_equal(Timestamp, t.class)
      assert_equal(1476316800, t.value)
      assert_equal(Rational(1, 10), t.sub_second)
      assert_equal(0, t.utc_offset)
      assert_equal(true, t.utc?)
    end
  end

  def test_for_timestamp_preserve_offset_utc
    orig = Timestamp.new(1476316800, 0, :utc)
    for_test(orig, :preserve) {|t| assert_same(orig, t) }
  end

  def test_for_timestamp_preserve_offset_with_zero_offset
    orig = Timestamp.new(1476316800, 0, 0)
    for_test(orig, :preserve) {|t| assert_same(orig, t) }
  end

  def test_for_timestamp_preserve_offset_with_offset
    orig = Timestamp.new(1476316800, 0, 3600)
    for_test(orig, :preserve) {|t| assert_same(orig, t) }
  end

  def test_for_timestamp_preserve_offset_by_default_with_offset
    orig = Timestamp.new(1476316800, 0, 3600)
    for_test(orig) {|t| assert_same(orig, t) }
  end

  def test_for_timestamp_preserve_offset_no_offset
    orig = Timestamp.new(1476316800)
    for_test(orig, :preserve) {|t| assert_same(orig, t) }
  end

  def test_for_timestamp_preserve_offset_sub_second
    orig = Timestamp.new(1476316800, Rational(1, 10), 0)
    for_test(orig, :preserve) {|t| assert_same(orig, t) }
  end

  def test_for_timestamp_preserve_offset_subclass_utc
    for_test(TestTimestampSubclass.new(1476316800, Rational(1, 10), :utc)) do |t|
      assert_equal(Timestamp, t.class)
      assert_equal(1476316800, t.value)
      assert_equal(Rational(1, 10), t.sub_second)
      assert_equal(0, t.utc_offset)
      assert_equal(true, t.utc?)
    end
  end

  def test_for_timestamp_preserve_offset_subclass_with_zero_offset
    for_test(TestTimestampSubclass.new(1476316800, Rational(1, 10), 0)) do |t|
      assert_equal(Timestamp, t.class)
      assert_equal(1476316800, t.value)
      assert_equal(Rational(1, 10), t.sub_second)
      assert_equal(0, t.utc_offset)
      assert_equal(false, t.utc?)
    end
  end

  def test_for_timestamp_preserve_offset_subclass_with_offset
    for_test(TestTimestampSubclass.new(1476316800, Rational(1, 10), 3600)) do |t|
      assert_equal(Timestamp, t.class)
      assert_equal(1476316800, t.value)
      assert_equal(Rational(1, 10), t.sub_second)
      assert_equal(3600, t.utc_offset)
      assert_equal(false, t.utc?)
    end
  end

  def test_for_timestamp_preserve_offset_subclass_no_offset
    for_test(TestTimestampSubclass.new(1476316800, Rational(1, 10))) do |t|
      assert_equal(Timestamp, t.class)
      assert_equal(1476316800, t.value)
      assert_equal(Rational(1, 10), t.sub_second)
      assert_nil(t.utc_offset)
      assert_nil(t.utc?)
    end
  end

  def test_for_time_ignore_offset_utc
    for_test(Time.utc(2016,10,13,0,0,0), :ignore) do |t|
      assert_equal(1476316800, t.value)
      assert_nil(t.utc_offset)
      assert_nil(t.utc?)
    end
  end

  def test_for_time_ignore_offset_with_zero_offset
    for_test(Time.new(2016,10,13,0,0,0,0), :ignore) do |t|
      assert_equal(1476316800, t.value)
      assert_nil(t.utc_offset)
      assert_nil(t.utc?)
    end
  end

  def test_for_time_ignore_offset_with_offset
    for_test(Time.new(2016,10,13,0,0,0,3600), :ignore) do |t|
      assert_equal(1476316800, t.value)
      assert_nil(t.utc_offset)
      assert_nil(t.utc?)
    end
  end

  def test_for_time_treat_offset_as_utc_utc
    for_test(Time.utc(2016,10,13,0,0,0), :treat_as_utc) do |t|
      assert_equal(1476316800, t.value)
      assert_equal(0, t.utc_offset)
      assert_equal(true, t.utc?)
    end
  end

  def test_for_time_treat_offset_as_utc_with_zero_offset
    for_test(Time.new(2016,10,13,0,0,0,0), :treat_as_utc) do |t|
      assert_equal(1476316800, t.value)
      assert_equal(0, t.utc_offset)
      assert_equal(true, t.utc?)
    end
  end

  def test_for_time_treat_offset_as_utc_with_offset
    for_test(Time.new(2016,10,13,0,0,0,3600), :treat_as_utc) do |t|
      assert_equal(1476316800, t.value)
      assert_equal(0, t.utc_offset)
      assert_equal(true, t.utc?)
    end
  end

  def test_for_time_preserve_offset_utc
    for_test(Time.utc(2016,10,13,0,0,0), :preserve) do |t|
      assert_equal(1476316800, t.value)
      assert_equal(0, t.utc_offset)
      assert_equal(true, t.utc?)
    end
  end

  def test_for_time_preserve_offset_zero_offset
    for_test(Time.new(2016,10,13,0,0,0,0), :preserve) do |t|
      assert_equal(1476316800, t.value)
      assert_equal(0, t.utc_offset)
      assert_equal(!TestUtils::TIME_SUPPORTS_DISTINCT_UTC, t.utc?)
    end
  end

  def test_for_time_preserve_offset_with_offset
    for_test(Time.new(2016,10,13,1,0,0,3600), :preserve) do |t|
      assert_equal(1476316800, t.value)
      assert_equal(3600, t.utc_offset)
      assert_equal(false, t.utc?)
    end
  end

  def test_for_time_preserve_offset_by_default_with_offset
    for_test(Time.new(2016,10,13,1,0,0,3600)) do |t|
      assert_equal(1476316800, t.value)
      assert_equal(3600, t.utc_offset)
      assert_equal(false, t.utc?)
    end
  end

  def test_for_time_zero_sub_second
    for_test(Time.utc(2016,10,13,0,0,1)) do |t|
      assert_equal(1476316801, t.value)
      assert_equal(0, t.sub_second)
    end
  end

  def test_for_time_sub_second
    for_test(Time.utc(2016,10,13,0,0,1,Rational(100_000,1))) do |t|
      assert_equal(1476316801, t.value)
      assert_equal(Rational(1,10), t.sub_second)
    end
  end

  def test_for_datetime_ignore_offset_utc
    for_test(DateTime.new(2016,10,13,0,0,0), :ignore) do |t|
      assert_equal(1476316800, t.value)
      assert_nil(t.utc_offset)
      assert_nil(t.utc?)
    end
  end

  def test_for_datetime_ignore_offset_with_offset
    for_test(DateTime.new(2016,10,13,0,0,0,Rational(1,24)), :ignore) do |t|
      assert_equal(1476316800, t.value)
      assert_nil(t.utc_offset)
      assert_nil(t.utc?)
    end
  end

  def test_for_datetime_treat_offset_as_utc_utc
    for_test(DateTime.new(2016,10,13,0,0,0), :treat_as_utc) do |t|
      assert_equal(1476316800, t.value)
      assert_equal(0, t.utc_offset)
      assert_equal(true, t.utc?)
    end
  end

  def test_for_datetime_treat_offset_as_utc_with_offset
    for_test(DateTime.new(2016,10,13,0,0,0,Rational(1,24)), :treat_as_utc) do |t|
      assert_equal(1476316800, t.value)
      assert_equal(0, t.utc_offset)
      assert_equal(true, t.utc?)
    end
  end

  def test_for_datetime_preserve_offset_with_zero_offset
    for_test(DateTime.new(2016,10,13,0,0,0), :preserve) do |t|
      assert_equal(1476316800, t.value)
      assert_equal(0, t.utc_offset)
      assert_equal(false, t.utc?)
    end
  end

  def test_for_datetime_preserve_offset_with_offset
    for_test(DateTime.new(2016,10,13,1,0,0,Rational(1,24)), :preserve) do |t|
      assert_equal(1476316800, t.value)
      assert_equal(3600, t.utc_offset)
      assert_equal(false, t.utc?)
    end
  end

  def test_for_datetime_preserve_offset_by_default_with_offset
    for_test(DateTime.new(2016,10,13,1,0,0,Rational(1,24))) do |t|
      assert_equal(1476316800, t.value)
      assert_equal(3600, t.utc_offset)
      assert_equal(false, t.utc?)
    end
  end

  def test_for_datetime_zero_sub_second
    for_test(DateTime.new(2016,10,13,0,0,1)) do |t|
      assert_equal(1476316801, t.value)
      assert_equal(0, t.sub_second)
    end
  end

  def test_for_datetime_sub_second
    for_test(DateTime.new(2016,10,13,0,0,Rational(11,10))) do |t|
      assert_equal(1476316801, t.value)
      assert_equal(Rational(1,10), t.sub_second)
    end
  end

  def for_raises_test(exception, message, *args)
    error = assert_raises(exception) { Timestamp.for(*args) }
    assert_equal(message, error.message)

    error = assert_raises(exception) do
      Timestamp.for(*args) do |t|
        flunk('block should not have been called')
      end
    end
    assert_equal(message, error.message)
  end

  def test_for_nil_value
    for_raises_test(ArgumentError, 'value must be specified', nil)
  end

  def test_for_invalid_value
    for_raises_test(ArgumentError, 'Object values are not supported', Object.new)
    for_raises_test(ArgumentError, "#{Time.utc(2016,10,13,0,0,0).to_i.class} values are not supported", Time.utc(2016,10,13,0,0,0).to_i)
  end

  def test_for_invalid_offset
    for_raises_test(ArgumentError, 'offset must be :preserve, :ignore or :treat_as_utc', Time.utc(2016,10,13,0,0,0), :invalid)
  end

  def test_for_block_result_timestamp
    block_result = Timestamp.new(1476316801)
    assert_same(block_result, Timestamp.for(Timestamp.new(1476316800)) {|t| block_result })
  end

  def test_for_block_result_to_time
    assert_equal_with_offset(Time.utc(2016,10,13,0,0,1),                     Timestamp.for(Time.utc(2016,10,13,0,0,0)) { Timestamp.new(1476316801) })
    assert_equal_with_offset(Time.utc(2016,10,13,0,0,1,Rational(100_000,1)), Timestamp.for(Time.utc(2016,10,13,0,0,0)) { Timestamp.new(1476316801, Rational(1,10)) })
    assert_equal_with_offset(Time.utc(2016,10,13,0,0,1),                     Timestamp.for(Time.utc(2016,10,13,0,0,0)) { Timestamp.new(1476316801, 0, :utc) })
    assert_equal_with_offset(Time.utc(2016,10,13,0,0,1,Rational(100_000,1)), Timestamp.for(Time.utc(2016,10,13,0,0,0)) { Timestamp.new(1476316801, Rational(1,10), :utc) })
    assert_equal_with_offset(Time.new(2016,10,13,0,0,1,0),                   Timestamp.for(Time.utc(2016,10,13,0,0,0)) { Timestamp.new(1476316801, 0, 0) })
    assert_equal_with_offset(Time.new(2016,10,13,0,0,1+Rational(1,10),0),    Timestamp.for(Time.utc(2016,10,13,0,0,0)) { Timestamp.new(1476316801, Rational(1,10), 0) })
    assert_equal_with_offset(Time.new(2016,10,13,1,0,1,3600),                Timestamp.for(Time.utc(2016,10,13,0,0,0)) { Timestamp.new(1476316801, 0, 3600) })
    assert_equal_with_offset(Time.new(2016,10,13,1,0,Rational(11,10),3600),  Timestamp.for(Time.utc(2016,10,13,0,0,0)) { Timestamp.new(1476316801, Rational(1,10), 3600) })
  end

  def test_for_block_result_to_datetime
    assert_equal_with_offset(DateTime.new(2016,10,13,0,0,1),                              Timestamp.for(DateTime.new(2016,10,13,0,0,0)) { Timestamp.new(1476316801) })
    assert_equal_with_offset(DateTime.new(2016,10,13,0,0,Rational(11,10)),                Timestamp.for(DateTime.new(2016,10,13,0,0,0)) { Timestamp.new(1476316801, Rational(1,10)) })
    assert_equal_with_offset(DateTime.new(2016,10,13,0,0,1),                              Timestamp.for(DateTime.new(2016,10,13,0,0,0)) { Timestamp.new(1476316801, 0, :utc) })
    assert_equal_with_offset(DateTime.new(2016,10,13,0,0,Rational(11,10)),                Timestamp.for(DateTime.new(2016,10,13,0,0,0)) { Timestamp.new(1476316801, Rational(1,10), :utc) })
    assert_equal_with_offset(DateTime.new(2016,10,13,0,0,1),                              Timestamp.for(DateTime.new(2016,10,13,0,0,0)) { Timestamp.new(1476316801, 0, 0) })
    assert_equal_with_offset(DateTime.new(2016,10,13,0,0,Rational(11,10)),                Timestamp.for(DateTime.new(2016,10,13,0,0,0)) { Timestamp.new(1476316801, Rational(1,10), 0) })
    assert_equal_with_offset(DateTime.new(2016,10,13,1,0,1,Rational(1,24)),               Timestamp.for(DateTime.new(2016,10,13,0,0,0)) { Timestamp.new(1476316801, 0, 3600) })
    assert_equal_with_offset(DateTime.new(2016,10,13,1,0,Rational(11,10),Rational(1,24)), Timestamp.for(DateTime.new(2016,10,13,0,0,0)) { Timestamp.new(1476316801, Rational(1,10), 3600) })
  end

  def test_for_block_result_timestamp_subclass
    block_result = TestTimestampSubclass.new(1476316801)
    assert_same(block_result, Timestamp.for(Timestamp.new(1476316800)) {|t| block_result })
  end

  def test_for_block_result_to_time_subclass
    assert_equal_with_offset(Time.new(2016,10,13,1,0,Rational(11,10),3600), Timestamp.for(Time.utc(2016,10,13,0,0,0)) { TestTimestampSubclass.new(1476316801, Rational(1,10), 3600) })
  end

  def test_for_block_result_to_datetime_subclass
    assert_equal_with_offset(DateTime.new(2016,10,13,1,0,Rational(11,10),Rational(1,24)), Timestamp.for(DateTime.new(2016,10,13,0,0,0)) { TestTimestampSubclass.new(1476316801, Rational(1,10), 3600) })
  end

  def for_block_invalid_result_test(block_result)
    block_called = false
    error = assert_raises(ArgumentError) do
      Timestamp.for(Timestamp.new(1476316800)) do |t|
        block_called = true
        block_result
      end
    end
    assert_equal('block must return a Timestamp', error.message)
    assert(block_called, 'block was not called')
  end

  def test_for_block_result_nil
    for_block_invalid_result_test(nil)
  end

  def test_for_block_result_non_timestamp
    for_block_invalid_result_test(Time.utc(2016,10,13,0,0,0))
  end

  def test_class_utc
    t = Timestamp.utc(1476316800)
    assert_kind_of(Timestamp, t)
    assert_equal(1476316800, t.value)
    assert_equal(0, t.sub_second)
    assert_equal(0, t.utc_offset)
    assert_equal(true, t.utc?)
  end

  def test_class_utc_sub_second
    t = Timestamp.utc(1476316800, Rational(1, 10))
    assert_kind_of(Timestamp, t)
    assert_equal(1476316800, t.value)
    assert_equal(Rational(1, 10), t.sub_second)
    assert_equal(0, t.utc_offset)
    assert_equal(true, t.utc?)
  end

  def test_class_utc_value_nil
    error = assert_raises(ArgumentError) { Timestamp.utc(nil) }
    assert_equal('value must be an Integer', error.message)
  end

  def test_class_utc_value_not_integer
    error = assert_raises(ArgumentError) { Timestamp.utc(1476316800.1) }
    assert_equal('value must be an Integer', error.message)
  end

  def test_class_utc_sub_second_nil
    error = assert_raises(ArgumentError) { Timestamp.utc(1476316800, nil) }
    assert_equal('sub_second must be a Rational or the Integer 0', error.message)
  end

  def test_class_utc_sub_second_not_integer_or_rational
    error = assert_raises(ArgumentError) { Timestamp.utc(1476316800, 0.1) }
    assert_equal('sub_second must be a Rational or the Integer 0', error.message)
  end

  def test_class_utc_sub_second_integer_not_zero
    error = assert_raises(ArgumentError) { Timestamp.utc(1476316800, 1) }
    assert_equal('sub_second must be a Rational or the Integer 0', error.message)
  end

  def test_class_utc_sub_second_less_than_zero
    error = assert_raises(RangeError) { Timestamp.utc(1476316800, Rational(-1, 10)) }
    assert_equal('sub_second must be >= 0 and < 1', error.message)
  end

  def test_class_utc_sub_second_greater_than_one
    error = assert_raises(RangeError) { Timestamp.utc(1476316800, Rational(11, 10)) }
    assert_equal('sub_second must be >= 0 and < 1', error.message)
  end
end
