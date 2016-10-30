require File.join(File.expand_path(File.dirname(__FILE__)), 'test_utils')

include TZInfo

class TCTimestampWithOffset < Minitest::Test
  def test_initialize_with_timestamp
    t = TimestampWithOffset.new(1476316800)
    assert_equal(1476316800, t.timestamp)
    assert_equal(0, t.utc_offset)
  end

  def test_initialize_with_timestamp_and_offset
    t = TimestampWithOffset.new(1476316800, 3600)
    assert_equal(1476316800, t.timestamp)
    assert_equal(3600, t.utc_offset)
  end

  def test_add_utc
    assert_equal(1476316800, (TimestampWithOffset.new(1476316800) + 0).timestamp)
    assert_equal(1476316801, (TimestampWithOffset.new(1476316800) + 1).timestamp)
    assert_equal(1476316799, (TimestampWithOffset.new(1476316800) + (-1)).timestamp)

    assert_equal(0, (TimestampWithOffset.new(1476316800) + 0).utc_offset)
    assert_equal(0, (TimestampWithOffset.new(1476316800) + 1).utc_offset)
    assert_equal(0, (TimestampWithOffset.new(1476316800) + (-1)).utc_offset)
  end

  def test_add_offset
    assert_equal(1476316800, (TimestampWithOffset.new(1476316800, 3600) + 0).timestamp)
    assert_equal(1476316801, (TimestampWithOffset.new(1476316800, 3600) + 1).timestamp)
    assert_equal(1476316799, (TimestampWithOffset.new(1476316800, 3600) + (-1)).timestamp)

    assert_equal(3600, (TimestampWithOffset.new(1476316800, 3600) + 0).utc_offset)
    assert_equal(3600, (TimestampWithOffset.new(1476316800, 3600) + 1).utc_offset)
    assert_equal(3600, (TimestampWithOffset.new(1476316800, 3600) + (-1)).utc_offset)
  end

  def test_subtract_utc
    assert_equal(1476316800, (TimestampWithOffset.new(1476316800) - 0).timestamp)
    assert_equal(1476316799, (TimestampWithOffset.new(1476316800) - 1).timestamp)
    assert_equal(1476316801, (TimestampWithOffset.new(1476316800) - (-1)).timestamp)

    assert_equal(0, (TimestampWithOffset.new(1476316800) - 0).utc_offset)
    assert_equal(0, (TimestampWithOffset.new(1476316800) - 1).utc_offset)
    assert_equal(0, (TimestampWithOffset.new(1476316800) - (-1)).utc_offset)
  end

  def test_subtract_offset
    assert_equal(1476316800, (TimestampWithOffset.new(1476316800, 3600) - 0).timestamp)
    assert_equal(1476316799, (TimestampWithOffset.new(1476316800, 3600) - 1).timestamp)
    assert_equal(1476316801, (TimestampWithOffset.new(1476316800, 3600) - (-1)).timestamp)

    assert_equal(3600, (TimestampWithOffset.new(1476316800, 3600) - 0).utc_offset)
    assert_equal(3600, (TimestampWithOffset.new(1476316800, 3600) - 1).utc_offset)
    assert_equal(3600, (TimestampWithOffset.new(1476316800, 3600) - (-1)).utc_offset)
  end

  def test_to_s_utc
    assert_equal('1476316800 UTC', TimestampWithOffset.new(1476316800).to_s)
  end

  def test_to_s_offset
    assert_equal('1476320400 +01:00 (1476316800 UTC)', TimestampWithOffset.new(1476316800, 3600).to_s)
    assert_equal('1476313200 -01:00 (1476316800 UTC)', TimestampWithOffset.new(1476316800, -3600).to_s)
    assert_equal('1476318300 +00:25 (1476316800 UTC)', TimestampWithOffset.new(1476316800, 1500).to_s)
    assert_equal('1476315300 -00:25 (1476316800 UTC)', TimestampWithOffset.new(1476316800, -1500).to_s)
    assert_equal('1476318303 +00:25:03 (1476316800 UTC)', TimestampWithOffset.new(1476316800, 1503).to_s)
    assert_equal('1476315297 -00:25:03 (1476316800 UTC)', TimestampWithOffset.new(1476316800, -1503).to_s)
    assert_equal('1476406800 +25:00 (1476316800 UTC)', TimestampWithOffset.new(1476316800, 90000).to_s)
    assert_equal('1476226800 -25:00 (1476316800 UTC)', TimestampWithOffset.new(1476316800, -90000).to_s)
  end

  def test_equality
    assert_equal(true, TimestampWithOffset.new(1476316800) == TimestampWithOffset.new(1476316800))
    assert_equal(true, TimestampWithOffset.new(1476316800) == TimestampWithOffset.new(1476316800, 0))
    assert_equal(true, TimestampWithOffset.new(1476316800) == TimestampWithOffset.new(1476316800, 3600))    
    assert_equal(false, TimestampWithOffset.new(1476316800) == TimestampWithOffset.new(1476313200))
    assert_equal(false, TimestampWithOffset.new(1476316800) == TimestampWithOffset.new(1476313200, 3600))
    assert_equal(true, TimestampWithOffset.new(1476316800, 0) == TimestampWithOffset.new(1476316800))
    assert_equal(true, TimestampWithOffset.new(1476316800, 3600) == TimestampWithOffset.new(1476316800))
    assert_equal(false, TimestampWithOffset.new(1476316800, 3600) == Object.new)
  end

  def test_eql
    assert_equal(true, TimestampWithOffset.new(1476316800).eql?(TimestampWithOffset.new(1476316800)))
    assert_equal(true, TimestampWithOffset.new(1476316800).eql?(TimestampWithOffset.new(1476316800, 0)))
    assert_equal(true, TimestampWithOffset.new(1476316800).eql?(TimestampWithOffset.new(1476316800, 3600)))
    assert_equal(false, TimestampWithOffset.new(1476316800).eql?(TimestampWithOffset.new(1476313200)))
    assert_equal(false, TimestampWithOffset.new(1476316800).eql?(TimestampWithOffset.new(1476313200, 3600)))
    assert_equal(true, TimestampWithOffset.new(1476316800, 0).eql?(TimestampWithOffset.new(1476316800)))
    assert_equal(true, TimestampWithOffset.new(1476316800, 3600).eql?(TimestampWithOffset.new(1476316800)))
    assert_equal(false, TimestampWithOffset.new(1476316800, 3600).eql?(Object.new))
  end

  def test_hash
    assert_equal(1476316800.hash, TimestampWithOffset.new(1476316800).hash)
    assert_equal(1476316800.hash, TimestampWithOffset.new(1476316800, 0).hash)
    assert_equal(1476316800.hash, TimestampWithOffset.new(1476316800, 3600).hash)
  end
end
