require File.join(File.expand_path(File.dirname(__FILE__)), 'test_utils')

include TZInfo

class TCTimezoneInfo < Test::Unit::TestCase
  
  def test_identifier
    ti = TimezoneInfo.new('Test/Zone')
    assert_equal('Test/Zone', ti.identifier)
  end
end
