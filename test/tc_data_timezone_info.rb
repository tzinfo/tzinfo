require File.join(File.expand_path(File.dirname(__FILE__)), 'test_utils')

include TZInfo

class TCDataTimezoneInfo < Minitest::Test

  def test_identifier
    ti = DataTimezoneInfo.new('Test/Zone')
    assert_equal('Test/Zone', ti.identifier)
  end

  def test_construct_timezone
    ti = DataTimezoneInfo.new('Test/Zone')
    tz = ti.create_timezone
    assert_kind_of(DataTimezone, tz)
    assert_equal('Test/Zone', tz.identifier)
  end

  def test_period_for
    ti = DataTimezoneInfo.new('Test/Zone')
    ts = Timestamp.utc(1480291200)
    assert_raises(NotImplementedError) { ti.period_for(ts) }
  end

  def test_periods_for_local
    ti = DataTimezoneInfo.new('Test/Zone')
    ts = Timestamp.new(1480291200)
    assert_raises(NotImplementedError) { ti.periods_for_local(ts) }
  end

  def test_transitions_up_to
    ti = DataTimezoneInfo.new('Test/Zone')
    ts = Timestamp.utc(1480291200)
    assert_raises(NotImplementedError) { ti.transitions_up_to(ts) }
  end
end
