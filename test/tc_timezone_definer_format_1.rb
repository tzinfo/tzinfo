require File.join(File.expand_path(File.dirname(__FILE__)), 'test_utils')

include TZInfo

class TCTimezoneDefinerFormat1 < Minitest::Test
  def test_transitions_with_timestamps
    d = TimezoneDefinerFormat1.new
    d.offset :o1, -17900,    0, :TESTLMT
    d.offset :o2, -18000, 3600, :TEST
    d.offset :o3, -18000,    0, :TESTD
    d.transition 2016, 3, :o2, 1456790400
    d.transition 2016, 9, :o3, 1472688000
    d.transition 2016, 3, :o2, 1488326400

    o1 = TimezoneOffset.new(-17900,    0, :TESTLMT)
    o2 = TimezoneOffset.new(-18000, 3600, :TEST)
    o3 = TimezoneOffset.new(-18000,    0, :TESTD)
    t1 = TimezoneTransition.new(o2, o1, 1456790400)
    t2 = TimezoneTransition.new(o3, o2, 1472688000)
    t3 = TimezoneTransition.new(o2, o3, 1488326400)

    assert_equal(o1, d.first_offset)
    assert_equal([t1,t2,t3], d.transitions)
  end

  def test_transitions_with_timestamps_and_datetimes
    d = TimezoneDefinerFormat1.new
    d.offset :o1, -17900,    0, :TESTLMT
    d.offset :o2, -18000, 3600, :TEST
    d.offset :o3, -18000,    0, :TESTD

    # DateTimes are defined 1 second after the timestamps. The timestamp values
    # will be used to construct TimezoneTransitions.
    d.transition 2016, 3, :o2, 1456790400, 212323550401, 86400
    d.transition 2016, 9, :o3, 1472688000, 212339448001, 86400
    d.transition 2016, 3, :o2, 1488326400, 212355086401, 86400

    o1 = TimezoneOffset.new(-17900,    0, :TESTLMT)
    o2 = TimezoneOffset.new(-18000, 3600, :TEST)
    o3 = TimezoneOffset.new(-18000,    0, :TESTD)
    t1 = TimezoneTransition.new(o2, o1, 1456790400)
    t2 = TimezoneTransition.new(o3, o2, 1472688000)
    t3 = TimezoneTransition.new(o2, o3, 1488326400)

    assert_equal(o1, d.first_offset)
    assert_equal([t1,t2,t3], d.transitions)
  end

  def test_transition_with_datetime
    # The ability to specify a transition solely as a DateTime has not been used
    # in any released version of TZInfo::Data. This is now not supported.
    d = TimezoneDefinerFormat1.new
    d.offset :o1, -17900, 0, :TESTLMT

    error = assert_raises(ArgumentError) { d.transition 2016, 3, :o1, 4914897, 2 }
    assert_match(/\bDateTime\b/, error.message)
  end
end
