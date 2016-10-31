require File.join(File.expand_path(File.dirname(__FILE__)), 'test_utils')
require 'date'

include TZInfo

class TCTimezoneTransitionDefinition < Minitest::Test
  def test_initialize
    t = TimezoneTransitionDefinition.new(TimezoneOffset.new(3600, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), 1148949080)
    assert_equal(1148949080, t.send(:timestamp))
  end

  def test_at
    t = TimezoneTransitionDefinition.new(TimezoneOffset.new(3600, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), 1148949080)
    at = t.at
    assert(TimeOrDateTime.new(1148949080).eql?(at))
    assert_same(at, t.at)
  end

  def test_eql
    t1 = TimezoneTransitionDefinition.new(TimezoneOffset.new(3600, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), 1148949080)
    t2 = TimezoneTransitionDefinition.new(TimezoneOffset.new(3600, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), 1148949080)
    t3 = TimezoneTransitionDefinition.new(TimezoneOffset.new(3600, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), 1148949081)
    t4 = TimezoneTransitionDefinition.new(TimezoneOffset.new(3601, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), 1148949080)
    t5 = TimezoneTransitionDefinition.new(TimezoneOffset.new(3600, 3600, :TDT),
      TimezoneOffset.new(3601, 0, :TST), 1148949080)

    assert_equal(true, t1.eql?(t1))
    assert_equal(true, t1.eql?(t2))
    assert_equal(false, t1.eql?(t3))
    assert_equal(false, t1.eql?(t4))
    assert_equal(false, t1.eql?(t5))
    assert_equal(false, t1.eql?(Object.new))
  end

  def test_hash
    t = TimezoneTransitionDefinition.new(TimezoneOffset.new(3600, 3600, :TDT),
      TimezoneOffset.new(3600, 0, :TST), 1148949080)

    assert_equal(TimezoneOffset.new(3600, 3600, :TDT).hash ^
      TimezoneOffset.new(3600, 0, :TST).hash ^ 1148949080.hash,
      t.hash)
  end
end
