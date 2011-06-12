$:.unshift File.join(File.dirname(__FILE__), "..", "lib")
require 'test/unit'
require 'tzinfo'

include TZInfo

class TCRubyCoreSupport < Test::Unit::TestCase
  def test_rational_new!
    assert_equal(Rational(3,4), RubyCoreSupport.rational_new!(3,4))
  end
  
  def test_datetime_new!
    assert_equal(DateTime.new(2008,10,5,12,0,0, 0, Date::ITALY), RubyCoreSupport.datetime_new!(2454745,0,2299161))
    assert_equal(DateTime.new(2008,10,5,20,30,0, 0, Date::ITALY), RubyCoreSupport.datetime_new!(Rational(117827777, 48),0,2299161))
    assert_equal(DateTime.new(2008,10,6,6,26,21, 0, Date::ITALY), RubyCoreSupport.datetime_new!(Rational(70696678127,28800),0,2299161))
    
    assert_equal(DateTime.new(2008,10,6,12,0,0, 1, Date::ITALY), RubyCoreSupport.datetime_new!(2454745,1,2299161))
    assert_equal(DateTime.new(2008,10,6,20,30,0, 1, Date::ITALY), RubyCoreSupport.datetime_new!(Rational(117827777, 48),1,2299161))
    assert_equal(DateTime.new(2008,10,7,6,26,21, 1, Date::ITALY), RubyCoreSupport.datetime_new!(Rational(70696678127, 28800),1,2299161))
  end
end
