require File.join(File.expand_path(File.dirname(__FILE__)), 'test_utils')
require 'date'

include TZInfo

class TCTimestamp < Minitest::Test
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
    assert_raises(ArgumentError) { Timestamp.new(nil) }
  end

  def test_initialize_valuenot_integer
    assert_raises(ArgumentError) { Timestamp.new(1476316800.0) }
  end

  def test_initialize_sub_second_nil
    assert_raises(ArgumentError) { Timestamp.new(1476316800, nil) }
  end

  def test_initialize_sub_second_not_integer_or_rational
    assert_raises(ArgumentError) { Timestamp.new(1476316800, 0.1) }
  end

  def test_initialize_sub_second_integer_not_zero
    assert_raises(ArgumentError) { Timestamp.new(1476316800, 1) }
  end

  def test_initialize_sub_second_less_than_zero
    assert_raises(RangeError) { Timestamp.new(1476316800, Rational(-1, 10)) }
  end

  def test_initialize_sub_second_greater_than_one
    assert_raises(RangeError) { Timestamp.new(1476316800, Rational(11, 10)) }
  end

  def test_initialize_utc_offset_not_integer_or_utc
    assert_raises(ArgumentError) { Timestamp.new(1476316800, 0, 1.0) }
    assert_raises(ArgumentError) { Timestamp.new(1476316800, 0, :zero) }
  end

  def test_add_without_offset
    t = Timestamp.new(1476316800, Rational(1, 10))
    t1 = t + 0
    t2 = t + 1
    t3 = t + (-1)

    assert_equal(1476316800, t1.value)
    assert_equal(1476316801, t2.value)
    assert_equal(1476316799, t3.value)

    assert_equal(Rational(1, 10), t1.sub_second)
    assert_equal(Rational(1, 10), t2.sub_second)
    assert_equal(Rational(1, 10), t3.sub_second)

    assert_nil(t1.utc_offset)
    assert_nil(t2.utc_offset)
    assert_nil(t3.utc_offset)

    assert_nil(t1.utc?)
    assert_nil(t2.utc?)
    assert_nil(t3.utc?)
  end

  def test_add_with_zero_offset
    t = Timestamp.new(1476316800, Rational(1, 10), 0)
    t1 = t + 0
    t2 = t + 1
    t3 = t + (-1)

    assert_equal(1476316800, t1.value)
    assert_equal(1476316801, t2.value)
    assert_equal(1476316799, t3.value)

    assert_equal(Rational(1, 10), t1.sub_second)
    assert_equal(Rational(1, 10), t2.sub_second)
    assert_equal(Rational(1, 10), t3.sub_second)

    assert_equal(0, t1.utc_offset)
    assert_equal(0, t2.utc_offset)
    assert_equal(0, t3.utc_offset)

    assert_equal(false, t1.utc?)
    assert_equal(false, t2.utc?)
    assert_equal(false, t3.utc?)
  end

  def test_add_with_non_zero_offset
    t = Timestamp.new(1476316800, Rational(1, 10), 3600)
    t1 = t + 0
    t2 = t + 1
    t3 = t + (-1)

    assert_equal(1476316800, t1.value)
    assert_equal(1476316801, t2.value)
    assert_equal(1476316799, t3.value)

    assert_equal(Rational(1, 10), t1.sub_second)
    assert_equal(Rational(1, 10), t2.sub_second)
    assert_equal(Rational(1, 10), t3.sub_second)

    assert_equal(3600, t1.utc_offset)
    assert_equal(3600, t2.utc_offset)
    assert_equal(3600, t3.utc_offset)

    assert_equal(false, t1.utc?)
    assert_equal(false, t2.utc?)
    assert_equal(false, t3.utc?)
  end

  def test_add_with_utc_offset
    t = Timestamp.new(1476316800, Rational(1, 10), :utc)
    t1 = t + 0
    t2 = t + 1
    t3 = t + (-1)

    assert_equal(1476316800, t1.value)
    assert_equal(1476316801, t2.value)
    assert_equal(1476316799, t3.value)

    assert_equal(Rational(1, 10), t1.sub_second)
    assert_equal(Rational(1, 10), t2.sub_second)
    assert_equal(Rational(1, 10), t3.sub_second)

    assert_equal(0, t1.utc_offset)
    assert_equal(0, t2.utc_offset)
    assert_equal(0, t3.utc_offset)

    assert_equal(true, t1.utc?)
    assert_equal(true, t2.utc?)
    assert_equal(true, t3.utc?)
  end

  def test_add_nil
    assert_raises(ArgumentError) { Timestamp.new(1476316800) + nil }
  end

  def test_add_non_integer
    assert_raises(ArgumentError) { Timestamp.new(1476316800) + 1.0 }
  end

  def test_subtract_without_offset
    t = Timestamp.new(1476316800, Rational(1, 10))
    t1 = t - 0
    t2 = t - 1
    t3 = t - (-1)

    assert_equal(1476316800, t1.value)
    assert_equal(1476316799, t2.value)
    assert_equal(1476316801, t3.value)

    assert_equal(Rational(1, 10), t1.sub_second)
    assert_equal(Rational(1, 10), t2.sub_second)
    assert_equal(Rational(1, 10), t3.sub_second)

    assert_nil(t1.utc_offset)
    assert_nil(t2.utc_offset)
    assert_nil(t3.utc_offset)

    assert_nil(t1.utc?)
    assert_nil(t2.utc?)
    assert_nil(t3.utc?)
  end

  def test_subtract_with_zero_offset
    t = Timestamp.new(1476316800, Rational(1, 10), 0)
    t1 = t - 0
    t2 = t - 1
    t3 = t - (-1)

    assert_equal(1476316800, t1.value)
    assert_equal(1476316799, t2.value)
    assert_equal(1476316801, t3.value)

    assert_equal(Rational(1, 10), t1.sub_second)
    assert_equal(Rational(1, 10), t2.sub_second)
    assert_equal(Rational(1, 10), t3.sub_second)

    assert_equal(0, t1.utc_offset)
    assert_equal(0, t2.utc_offset)
    assert_equal(0, t3.utc_offset)

    assert_equal(false, t1.utc?)
    assert_equal(false, t2.utc?)
    assert_equal(false, t3.utc?)
  end

  def test_subtract_with_non_zero_offset
    t = Timestamp.new(1476316800, Rational(1, 10), 3600)
    t1 = t - 0
    t2 = t - 1
    t3 = t - (-1)

    assert_equal(1476316800, t1.value)
    assert_equal(1476316799, t2.value)
    assert_equal(1476316801, t3.value)

    assert_equal(Rational(1, 10), t1.sub_second)
    assert_equal(Rational(1, 10), t2.sub_second)
    assert_equal(Rational(1, 10), t3.sub_second)

    assert_equal(3600, t1.utc_offset)
    assert_equal(3600, t2.utc_offset)
    assert_equal(3600, t3.utc_offset)

    assert_equal(false, t1.utc?)
    assert_equal(false, t2.utc?)
    assert_equal(false, t3.utc?)
  end

  def test_subtract_with_utc_offset
    t = Timestamp.new(1476316800, Rational(1, 10), :utc)
    t1 = t - 0
    t2 = t - 1
    t3 = t - (-1)

    assert_equal(1476316800, t1.value)
    assert_equal(1476316799, t2.value)
    assert_equal(1476316801, t3.value)

    assert_equal(Rational(1, 10), t1.sub_second)
    assert_equal(Rational(1, 10), t2.sub_second)
    assert_equal(Rational(1, 10), t3.sub_second)

    assert_equal(0, t1.utc_offset)
    assert_equal(0, t2.utc_offset)
    assert_equal(0, t3.utc_offset)

    assert_equal(true, t1.utc?)
    assert_equal(true, t2.utc?)
    assert_equal(true, t3.utc?)
  end

  def test_subtract_nil
    assert_raises(ArgumentError) { Timestamp.new(1476316800) - nil }
  end

  def test_subtract_non_integer
    assert_raises(ArgumentError) { Timestamp.new(1476316800) - 1.0 }
  end

  def test_apply_offset_sub_second
    t = Timestamp.new(1476316800, Rational(1, 10), 0).apply_offset(3600)
    assert_equal(1476316800, t.value)
    assert_equal(Rational(1, 10), t.sub_second)
    assert_equal(3600, t.utc_offset)
    assert_equal(false, t.utc?)
  end

  def test_apply_offset_change_offset_from_zero
    t = Timestamp.new(1476316800, 0, 0).apply_offset(3600)
    assert_equal(1476316800, t.value)
    assert_equal(0, t.sub_second)
    assert_equal(3600, t.utc_offset)
    assert_equal(false, t.utc?)
  end

  def test_apply_offset_change_offset_from_non_zero
    t = Timestamp.new(1476316800, 0, -3600).apply_offset(3600)
    assert_equal(1476316800, t.value)
    assert_equal(0, t.sub_second)
    assert_equal(3600, t.utc_offset)
    assert_equal(false, t.utc?)
  end

  def test_apply_offset_change_offset_from_utc
    t = Timestamp.new(1476316800, 0, :utc).apply_offset(3600)
    assert_equal(1476316800, t.value)
    assert_equal(0, t.sub_second)
    assert_equal(3600, t.utc_offset)
    assert_equal(false, t.utc?)
  end

  def test_apply_offset_change_offset_from_unspecified
    t = Timestamp.new(1476316800, 0).apply_offset(3600)
    assert_equal(1476316800, t.value)
    assert_equal(0, t.sub_second)
    assert_equal(3600, t.utc_offset)
    assert_equal(false, t.utc?)
  end

  def test_apply_offset_change_offset_to_zero
    t = Timestamp.new(1476316800, 0, 3600).apply_offset(0)
    assert_equal(1476316800, t.value)
    assert_equal(0, t.sub_second)
    assert_equal(0, t.utc_offset)
    assert_equal(false, t.utc?)
  end

  def test_apply_offset_change_offset_to_utc
    t = Timestamp.new(1476316800, 0, 0).apply_offset(:utc)
    assert_equal(1476316800, t.value)
    assert_equal(0, t.sub_second)
    assert_equal(0, t.utc_offset)
    assert_equal(true, t.utc?)
  end

  def test_apply_offset_same_offset
    orig = Timestamp.new(1476316800, 0, -3600)
    t = orig.apply_offset(-3600)
    assert_same(orig, t)
  end

  def test_apply_offset_nil
    t = Timestamp.new(1476316800, 0, 0)
    assert_raises(ArgumentError) { t.apply_offset(nil) }
  end

  def test_apply_offset_non_integer
    t = Timestamp.new(1476316800, 0, 0)
    o = Object.new
    assert_raises(ArgumentError) { t.apply_offset(o) }
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

  # Test Timestamp.for with and without a block.
  def for_test(*args)
    t = Timestamp.for(*args)
    assert_kind_of(Timestamp, t)
    yield t

    block_called = false
    block_result = Timestamp.for(*args) do |t2|
      block_called = true
      assert_kind_of(Timestamp, t2)
      yield t2
      t2
    end

    assert(block_called, 'block was not called')
    assert_kind_of(args[0].class, block_result)
  end

  def test_for_timestamp_ignore_offset_utc
    for_test(Timestamp.new(1476316800, 0, :utc), offset: :ignore) do |t|
      assert_equal(1476316800, t.value)
      assert_equal(0, t.sub_second)
      assert_nil(t.utc_offset)
      assert_nil(t.utc?)
    end
  end

  def test_for_timestamp_ignore_offset_with_zero_offset
    for_test(Timestamp.new(1476316800, 0, 0), offset: :ignore) do |t|
      assert_equal(1476316800, t.value)
      assert_equal(0, t.sub_second)
      assert_nil(t.utc_offset)
      assert_nil(t.utc?)
    end
  end

  def test_for_timestamp_ignore_offset_with_offset
    for_test(Timestamp.new(1476316800, 0, 3600), offset: :ignore) do |t|
      assert_equal(1476320400, t.value)
      assert_equal(0, t.sub_second)
      assert_nil(t.utc_offset)
      assert_nil(t.utc?)
    end
  end

  def test_for_timestamp_ignore_offset_sub_second
    for_test(Timestamp.new(1476316800, Rational(1, 10), 3600), offset: :ignore) do |t|
      assert_equal(1476320400, t.value)
      assert_equal(Rational(1, 10), t.sub_second)
      assert_nil(t.utc_offset)
      assert_nil(t.utc?)
    end
  end

  def test_for_timestamp_ignore_offset_no_offset
    orig = Timestamp.new(1476316800)
    for_test(orig, offset: :ignore) {|t| assert_same(orig, t) }
  end

  def test_for_timestamp_preserve_offset_utc
    orig = Timestamp.new(1476316800, 0, :utc)
    for_test(orig, offset: :preserve) {|t| assert_same(orig, t) }
  end

  def test_for_timestamp_preserve_offset_with_zero_offset
    orig = Timestamp.new(1476316800, 0, 0)
    for_test(orig, offset: :preserve) {|t| assert_same(orig, t) }
  end

  def test_for_timestamp_preserve_offset_with_offset
    orig = Timestamp.new(1476316800, 0, 3600)
    for_test(orig, offset: :preserve) {|t| assert_same(orig, t) }
  end

  def test_for_timestamp_preserve_offset_by_default_with_offset
    orig = Timestamp.new(1476316800, 0, 3600)
    for_test(orig) {|t| assert_same(orig, t) }
  end

  def test_for_timestamp_preserve_offset_no_offset
    orig = Timestamp.new(1476316800)
    for_test(orig, offset: :preserve) {|t| assert_same(orig, t) }
  end

  def test_for_timestamp_preserve_offset_sub_second
    orig = Timestamp.new(1476316800, Rational(1, 10), 0)
    for_test(orig, offset: :preserve) {|t| assert_same(orig, t) }
  end

  def test_for_time_ignore_offset_utc
    for_test(Time.utc(2016,10,13,0,0,0), offset: :ignore) do |t|
      assert_equal(1476316800, t.value)
      assert_nil(t.utc_offset)
      assert_nil(t.utc?)
    end
  end

  def test_for_time_ignore_offset_with_zero_offset
    for_test(Time.new(2016,10,13,0,0,0,0), offset: :ignore) do |t|
      assert_equal(1476316800, t.value)
      assert_nil(t.utc_offset)
      assert_nil(t.utc?)
    end
  end

  def test_for_time_ignore_offset_with_offset
    for_test(Time.new(2016,10,13,0,0,0,3600), offset: :ignore) do |t|
      assert_equal(1476316800, t.value)
      assert_nil(t.utc_offset)
      assert_nil(t.utc?)
    end
  end

  def test_for_time_preserve_offset_utc
    for_test(Time.utc(2016,10,13,0,0,0), offset: :preserve) do |t|
      assert_equal(1476316800, t.value)
      assert_equal(0, t.utc_offset)
      assert_equal(true, t.utc?)
    end
  end

  def test_for_time_preserve_offset_zero_offset
    for_test(Time.new(2016,10,13,0,0,0,0), offset: :preserve) do |t|
      assert_equal(1476316800, t.value)
      assert_equal(0, t.utc_offset)
      assert_equal(!TestUtils::TIME_SUPPORTS_DISTINCT_UTC, t.utc?)
    end
  end

  def test_for_time_preserve_offset_with_offset
    for_test(Time.new(2016,10,13,1,0,0,3600), offset: :preserve) do |t|
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
    for_test(DateTime.new(2016,10,13,0,0,0), offset: :ignore) do |t|
      assert_equal(1476316800, t.value)
      assert_nil(t.utc_offset)
      assert_nil(t.utc?)
    end
  end

  def test_for_datetime_ignore_offset_with_offset
    for_test(DateTime.new(2016,10,13,0,0,0,Rational(1,24)), offset: :ignore) do |t|
      assert_equal(1476316800, t.value)
      assert_nil(t.utc_offset)
      assert_nil(t.utc?)
    end
  end

  def test_for_datetime_preserve_offset_with_zero_offset
    for_test(DateTime.new(2016,10,13,0,0,0), offset: :preserve) do |t|
      assert_equal(1476316800, t.value)
      assert_equal(0, t.utc_offset)
      assert_equal(false, t.utc?)
    end
  end

  def test_for_datetime_preserve_offset_with_offset
    for_test(DateTime.new(2016,10,13,1,0,0,Rational(1,24)), offset: :preserve) do |t|
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

  def for_raises_test(exception, *args)
    assert_raises(exception) { Timestamp.for(*args) }
    assert_raises(exception) do
      Timestamp.for(*args) do |t|
        flunk('block should not have been called')
      end
    end
  end

  def test_for_nil_value
    for_raises_test(ArgumentError, nil)
  end

  def test_for_invalid_value
    for_raises_test(ArgumentError, Object.new)
    for_raises_test(ArgumentError, Time.utc(2016,10,13,0,0,0).to_i)
  end

  def test_for_invalid_offset
    for_raises_test(ArgumentError, Time.utc(2016,10,13,0,0,0), offset: :invalid)
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

  def for_block_invalid_result_test(block_result)
    block_called = false
    assert_raises(ArgumentError) do
      Timestamp.for(Timestamp.new(1476316800)) do |t|
        block_called = true
        block_result
      end
    end
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
    assert_raises(ArgumentError) { Timestamp.utc(nil) }
  end

  def test_class_utc_value_not_integer
    assert_raises(ArgumentError) { Timestamp.utc(1476316800.1) }
  end

  def test_class_utc_sub_second_nil
    assert_raises(ArgumentError) { Timestamp.utc(1476316800, nil) }
  end

  def test_class_utc_sub_second_not_integer_or_rational
    assert_raises(ArgumentError) { Timestamp.utc(1476316800, 0.1) }
  end

  def test_class_utc_sub_second_integer_not_zero
    assert_raises(ArgumentError) { Timestamp.utc(1476316800, 1) }
  end

  def test_class_utc_sub_second_less_than_zero
    assert_raises(RangeError) { Timestamp.utc(1476316800, Rational(-1, 10)) }
  end

  def test_class_utc_sub_second_greater_than_one
    assert_raises(RangeError) { Timestamp.utc(1476316800, Rational(11, 10)) }
  end
end
