require File.join(File.expand_path(File.dirname(__FILE__)), 'test_utils')

include TZInfo

class TCLinkedTimezoneInfo < Test::Unit::TestCase
  
  def test_identifier
    lti = LinkedTimezoneInfo.new('Test/Zone', 'Test/Linked')
    assert_equal('Test/Zone', lti.identifier)
  end
  
  def test_link_to_identifier
    lti = LinkedTimezoneInfo.new('Test/Zone', 'Test/Linked')
    assert_equal('Test/Linked', lti.link_to_identifier)
  end
end
