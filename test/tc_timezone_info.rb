require File.join(File.expand_path(File.dirname(__FILE__)), 'test_utils')

include TZInfo

class TCTimezoneInfo < Minitest::Test

  def test_identifier
    ti = TimezoneInfo.new('Test/Zone')
    assert_equal('Test/Zone', ti.identifier)
    assert(ti.identifier.frozen?)
  end

  def test_inspect
    ti = TimezoneInfo.new('Test/Zone')
    assert_equal('#<TZInfo::TimezoneInfo: Test/Zone>', ti.inspect)
  end
end
