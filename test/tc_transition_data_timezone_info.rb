require File.join(File.expand_path(File.dirname(__FILE__)), 'test_utils')

include TZInfo

class TCTransitionDataTimezoneInfo < Minitest::Test

  def test_identifier
    dti = TransitionDataTimezoneInfo.new('Test/Zone')
    assert_equal('Test/Zone', dti.identifier)
  end

  def test_offset
    dti = TransitionDataTimezoneInfo.new('Test/Zone')

    assert_nothing_raised do
      dti.offset :o1, -18000, 3600, :TEST
    end
  end

  def test_offset_already_defined
    dti = TransitionDataTimezoneInfo.new('Test/Zone')
    dti.offset :o1, 3600, 0, :TEST
    dti.offset :o2, 1800, 0, :TEST2

    assert_raises(ArgumentError) { dti.offset :o1, 3600, 3600, :TESTD }
  end

  def test_transition_accepts_year_and_month
    dti = TransitionDataTimezoneInfo.new('Test/Zone')
    dti.offset :o1, -17900,    0, :TESTLMT
    dti.offset :o2, -18000, 3600, :TESTD
    dti.offset :o3, -18000,    0, :TESTS

    # The first two parameters were previously used to indicate the year and
    # month of the transition. They are no longer used. Test that arbitrary
    # values are now just accepted and ignored.
    dti.transition 2017,  2, :o2, Time.utc(2000, 4,1,1,0,0).to_i
    dti.transition 2010, 10, :o3, Time.utc(2000,10,1,1,0,0).to_i
    dti.transition 4031, 13, :o2, Time.utc(2001, 3,1,1,0,0).to_i

    o1 = TimezoneOffset.new(-17900,    0, :TESTLMT)
    o2 = TimezoneOffset.new(-18000, 3600, :TESTD)
    o3 = TimezoneOffset.new(-18000,    0, :TESTS)

    t1 = TimezoneTransition.new(o2, o1, Time.utc(2000, 4,1,1,0,0).to_i)
    t2 = TimezoneTransition.new(o3, o2, Time.utc(2000,10,1,1,0,0).to_i)
    t3 = TimezoneTransition.new(o2, o3, Time.utc(2001, 3,1,1,0,0).to_i)

    assert_equal([t1,t2,t3], dti.transitions_up_to(Timestamp.for(Time.utc(2001,3,1,1,0,0,1))))
  end

  def test_transition_timestamp
    dti = TransitionDataTimezoneInfo.new('Test/Zone')
    dti.offset :o1, -18000, 3600, :TEST

    assert_nothing_raised do
      dti.transition nil, nil, :o1, 1149368400
    end
  end

  def test_transition_datetime
    # The ability to specify a transition solely as a DateTime has not been used
    # in any released version of TZInfo::Data. This is now not supported.
    dti = TransitionDataTimezoneInfo.new('Test/Zone')
    dti.offset :o1, -18000, 3600, :TEST

    assert_raises(ArgumentError) { dti.transition nil, nil, :o1, 19631123, 8 }
  end

  def test_transition_timestamp_and_datetime
    dti = TransitionDataTimezoneInfo.new('Test/Zone')
    dti.offset :o1, -18000, 3600, :TEST

    # The timestamp parameter is 1 second after the DateTime parameters.
    dti.transition nil, nil, :o1, -2208988799, 4830041, 2

    # Confirm that the timestamp parameter was used.
    assert_equal(-2208988799, dti.transitions_up_to(Timestamp.utc(-2208988798)).first.at.value)
  end

  def test_transition_invalid_offset
    dti = TransitionDataTimezoneInfo.new('Test/Zone')
    dti.offset :o1, -18000, 3600, :TEST

    dti.transition nil, nil, :o1, 1149368400

    assert_raises(ArgumentError) { dti.transition nil, nil, :o2, 1149454800 }
  end

  def test_transition_no_offsets
    dti = TransitionDataTimezoneInfo.new('Test/Zone')

    assert_raises(ArgumentError) { dti.transition nil, nil, :o1, 1149368400 }
  end

  def test_transition_not_increased
    dti = TransitionDataTimezoneInfo.new('Test/Zone')
    dti.offset :o1, -18000, 3600, :TEST

    dti.transition nil, nil, :o1, 1149368400

    error = assert_raises(ArgumentError) { dti.transition nil, nil, :o1, 1149368400 }
    assert_match(/\bincreasing\b/, error.message)
  end

  def test_transition_decreased
    dti = TransitionDataTimezoneInfo.new('Test/Zone')
    dti.offset :o1, -18000, 3600, :TEST

    dti.transition nil, nil, :o1, 1149368400

    error = assert_raises(ArgumentError) { dti.transition nil, nil, :o1, 1149368399 }
    assert_match(/\bincreasing\b/, error.message)
  end

  def test_period_for
    dti = TransitionDataTimezoneInfo.new('Test/Zone')
    dti.offset :o1, -17900,    0, :TESTLMT
    dti.offset :o2, -18000, 3600, :TESTD
    dti.offset :o3, -18000,    0, :TESTS
    dti.offset :o4, -21600, 3600, :TESTD

    dti.transition nil, nil, :o2, Time.utc(2000, 4,1,1,0,0).to_i
    dti.transition nil, nil, :o3, Time.utc(2000,10,1,1,0,0).to_i
    dti.transition nil, nil, :o2, Time.utc(2001, 3,1,1,0,0).to_i
    dti.transition nil, nil, :o4, Time.utc(2001, 4,1,1,0,0).to_i
    dti.transition nil, nil, :o3, Time.utc(2001,10,1,1,0,0).to_i
    dti.transition nil, nil, :o3, Time.utc(2002,10,1,1,0,0).to_i
    dti.transition nil, nil, :o2, Time.utc(2003, 2,1,1,0,0).to_i
    dti.transition nil, nil, :o3, Time.utc(2003, 3,1,1,0,0).to_i

    o1 = TimezoneOffset.new(-17900, 0,    :TESTLMT)
    o2 = TimezoneOffset.new(-18000, 3600, :TESTD)
    o3 = TimezoneOffset.new(-18000, 0,    :TESTS)
    o4 = TimezoneOffset.new(-21600, 3600, :TESTD)

    t1 = TimezoneTransition.new(o2, o1, Time.utc(2000, 4,1,1,0,0).to_i)
    t2 = TimezoneTransition.new(o3, o2, Time.utc(2000,10,1,1,0,0).to_i)
    t3 = TimezoneTransition.new(o2, o3, Time.utc(2001, 3,1,1,0,0).to_i)
    t4 = TimezoneTransition.new(o4, o2, Time.utc(2001, 4,1,1,0,0).to_i)
    t5 = TimezoneTransition.new(o3, o4, Time.utc(2001,10,1,1,0,0).to_i)
    t6 = TimezoneTransition.new(o3, o3, Time.utc(2002,10,1,1,0,0).to_i)
    t7 = TimezoneTransition.new(o2, o3, Time.utc(2003, 2,1,1,0,0).to_i)
    t8 = TimezoneTransition.new(o3, o2, Time.utc(2003, 3,1,1,0,0).to_i)

    assert_equal(TimezonePeriod.new(nil, t1), dti.period_for(Timestamp.for(Time.utc(1960, 1,1,1, 0, 0))))
    assert_equal(TimezonePeriod.new(nil, t1), dti.period_for(Timestamp.for(Time.utc(1999,12,1,0, 0, 0))))
    assert_equal(TimezonePeriod.new(nil, t1), dti.period_for(Timestamp.for(Time.utc(2000, 4,1,0,59,59))))
    assert_equal(TimezonePeriod.new(t1, t2),  dti.period_for(Timestamp.for(Time.utc(2000, 4,1,1, 0, 0))))
    assert_equal(TimezonePeriod.new(t1, t2),  dti.period_for(Timestamp.for(Time.utc(2000,10,1,0,59,59))))
    assert_equal(TimezonePeriod.new(t2, t3),  dti.period_for(Timestamp.for(Time.utc(2000,10,1,1, 0, 0))))
    assert_equal(TimezonePeriod.new(t2, t3),  dti.period_for(Timestamp.for(Time.utc(2001, 3,1,0,59,59))))
    assert_equal(TimezonePeriod.new(t3, t4),  dti.period_for(Timestamp.for(Time.utc(2001, 3,1,1, 0, 0))))
    assert_equal(TimezonePeriod.new(t3, t4),  dti.period_for(Timestamp.for(Time.utc(2001, 4,1,0,59,59))))
    assert_equal(TimezonePeriod.new(t4, t5),  dti.period_for(Timestamp.for(Time.utc(2001, 4,1,1, 0, 0))))
    assert_equal(TimezonePeriod.new(t4, t5),  dti.period_for(Timestamp.for(Time.utc(2001,10,1,0,59,59))))
    assert_equal(TimezonePeriod.new(t5, t6),  dti.period_for(Timestamp.for(Time.utc(2001,10,1,1, 0, 0))))
    assert_equal(TimezonePeriod.new(t5, t6),  dti.period_for(Timestamp.for(Time.utc(2002, 2,1,1, 0, 0))))
    assert_equal(TimezonePeriod.new(t5, t6),  dti.period_for(Timestamp.for(Time.utc(2002,10,1,0,59,59))))
    assert_equal(TimezonePeriod.new(t6, t7),  dti.period_for(Timestamp.for(Time.utc(2002,10,1,1, 0, 0))))
    assert_equal(TimezonePeriod.new(t6, t7),  dti.period_for(Timestamp.for(Time.utc(2003, 2,1,0,59,59))))
    assert_equal(TimezonePeriod.new(t7, t8),  dti.period_for(Timestamp.for(Time.utc(2003, 2,1,1, 0, 0))))
    assert_equal(TimezonePeriod.new(t7, t8),  dti.period_for(Timestamp.for(Time.utc(2003, 3,1,0,59,59))))
    assert_equal(TimezonePeriod.new(t8, nil), dti.period_for(Timestamp.for(Time.utc(2003, 3,1,1, 0, 0))))
    assert_equal(TimezonePeriod.new(t8, nil), dti.period_for(Timestamp.for(Time.utc(2004, 1,1,1, 0, 0))))
    assert_equal(TimezonePeriod.new(t8, nil), dti.period_for(Timestamp.for(Time.utc(2050, 1,1,1, 0, 0))))
  end

  def test_period_for_timestamp_with_zero_utc_offset
    dti = TransitionDataTimezoneInfo.new('Test/Zone')
    dti.offset :o1, -17900, 0, :TESTLMT
    dti.offset :o2, -18000, 0, :TEST

    dti.transition nil, nil, :o2, Time.utc(2000,7,1,0,0,0).to_i

    o1 = TimezoneOffset.new(-17900, 0, :TESTLMT)
    o2 = TimezoneOffset.new(-18000, 0, :TEST)

    t1 = TimezoneTransition.new(o2, o1, Time.utc(2000,7,1,0,0,0).to_i)

    assert_equal(TimezonePeriod.new(t1, nil), dti.period_for(Timestamp.for(Time.new(2000,7,1,0,0,0,0))))
  end

  def test_period_for_timestamp_with_non_zero_utc_offset
    dti = TransitionDataTimezoneInfo.new('Test/Zone')
    dti.offset :o1, -17900, 0, :TESTLMT
    dti.offset :o2, -18000, 0, :TEST

    dti.transition nil, nil, :o2, Time.utc(2000,7,1,0,0,0).to_i

    o1 = TimezoneOffset.new(-17900, 0, :TESTLMT)
    o2 = TimezoneOffset.new(-18000, 0, :TEST)

    t1 = TimezoneTransition.new(o2, o1, Time.utc(2000,7,1,0,0,0).to_i)

    assert_equal(TimezonePeriod.new(t1, nil), dti.period_for(Timestamp.for(Time.new(2000,6,30,23, 0, 0,-3600))))
    assert_equal(TimezonePeriod.new(nil, t1), dti.period_for(Timestamp.for(Time.new(2000,7, 1, 0,59,59, 3600))))
  end

  def test_period_for_no_transitions
    dti = TransitionDataTimezoneInfo.new('Test/Zone')
    dti.offset :o1, -17900, 0, :TESTLMT
    dti.offset :o2, -18000, 0, :TEST

    o1 = TimezoneOffset.new(-17900, 0, :TESTLMT)

    assert_equal(TimezonePeriod.new(nil, nil, o1), dti.period_for(Timestamp.for(Time.utc(2005,1,1,0,0,0))))
    assert_equal(TimezonePeriod.new(nil, nil, o1), dti.period_for(Timestamp.for(Time.utc(2005,1,1,0,0,0))))
    assert_equal(TimezonePeriod.new(nil, nil, o1), dti.period_for(Timestamp.for(Time.utc(2005,1,1,0,0,0))))
  end

  def test_period_for_utc_no_offsets
    dti = TransitionDataTimezoneInfo.new('Test/Zone')

    assert_raises(NoOffsetsDefined) { dti.period_for(Timestamp.for(Time.utc(2005,1,1,0,0,0))) }
    assert_raises(NoOffsetsDefined) { dti.period_for(Timestamp.for(Time.utc(2005,1,1,0,0,0))) }
    assert_raises(NoOffsetsDefined) { dti.period_for(Timestamp.for(Time.utc(2005,1,1,0,0,0))) }
  end

  def test_period_for_timestamp_with_unspecified_offset
    dti = TransitionDataTimezoneInfo.new('Test/Zone')
    dti.offset :o1, -17900, 0, :TESTLMT

    assert_raises(ArgumentError) { dti.period_for(Timestamp.for(Time.utc(2005,1,1,0,0,0), offset: :ignore)) }
  end

  def test_period_for_nil
    dti = TransitionDataTimezoneInfo.new('Test/Zone')
    dti.offset :o1, -17900, 0, :TESTLMT

    assert_raises(ArgumentError) { dti.period_for(nil) }
  end

  def test_periods_for_local
    dti = TransitionDataTimezoneInfo.new('Test/Zone')
    dti.offset :o1, -17900,    0, :TESTLMT
    dti.offset :o2, -18000, 3600, :TESTD
    dti.offset :o3, -18000,    0, :TESTS
    dti.offset :o4, -21600, 3600, :TESTD

    dti.transition nil, nil, :o2, Time.utc(2000, 4,2,1,0,0).to_i
    dti.transition nil, nil, :o3, Time.utc(2000,10,2,1,0,0).to_i
    dti.transition nil, nil, :o2, Time.utc(2001, 3,2,1,0,0).to_i
    dti.transition nil, nil, :o4, Time.utc(2001, 4,2,1,0,0).to_i
    dti.transition nil, nil, :o3, Time.utc(2001,10,2,1,0,0).to_i
    dti.transition nil, nil, :o3, Time.utc(2002,10,2,1,0,0).to_i
    dti.transition nil, nil, :o2, Time.utc(2003, 2,2,1,0,0).to_i

    o1 = TimezoneOffset.new(-17900,    0, :TESTLMT)
    o2 = TimezoneOffset.new(-18000, 3600, :TESTD)
    o3 = TimezoneOffset.new(-18000,    0, :TESTS)
    o4 = TimezoneOffset.new(-21600, 3600, :TESTD)

    t1 = TimezoneTransition.new(o2, o1, Time.utc(2000, 4,2,1,0,0).to_i)
    t2 = TimezoneTransition.new(o3, o2, Time.utc(2000,10,2,1,0,0).to_i)
    t3 = TimezoneTransition.new(o2, o3, Time.utc(2001, 3,2,1,0,0).to_i)
    t4 = TimezoneTransition.new(o4, o2, Time.utc(2001, 4,2,1,0,0).to_i)
    t5 = TimezoneTransition.new(o3, o4, Time.utc(2001,10,2,1,0,0).to_i)
    t6 = TimezoneTransition.new(o3, o3, Time.utc(2002,10,2,1,0,0).to_i)
    t7 = TimezoneTransition.new(o2, o3, Time.utc(2003, 2,2,1,0,0).to_i)


    assert_equal([TimezonePeriod.new(nil, t1)], dti.periods_for_local(Timestamp.for(Time.utc(1960, 1, 1, 1, 0, 0), offset: :ignore)))
    assert_equal([TimezonePeriod.new(nil, t1)], dti.periods_for_local(Timestamp.for(Time.utc(1999,12, 1, 0, 0, 0), offset: :ignore)))
    assert_equal([TimezonePeriod.new(nil, t1)], dti.periods_for_local(Timestamp.for(Time.utc(2000, 1, 1,10, 0, 0), offset: :ignore)))
    assert_equal([TimezonePeriod.new(nil, t1)], dti.periods_for_local(Timestamp.for(Time.utc(2000, 4, 1,20, 1,39), offset: :ignore)))
    assert_equal([],                            dti.periods_for_local(Timestamp.for(Time.utc(2000, 4, 1,20, 1,40), offset: :ignore)))
    assert_equal([],                            dti.periods_for_local(Timestamp.for(Time.utc(2000, 4, 1,20,59,59), offset: :ignore)))
    assert_equal([TimezonePeriod.new(t1,  t2)], dti.periods_for_local(Timestamp.for(Time.utc(2000, 4, 1,21, 0, 0), offset: :ignore)))
    assert_equal([TimezonePeriod.new(t1,  t2)], dti.periods_for_local(Timestamp.for(Time.utc(2000,10, 1,19,59,59), offset: :ignore)))
    assert_equal([TimezonePeriod.new(t1,  t2),
                  TimezonePeriod.new(t2,  t3)], dti.periods_for_local(Timestamp.for(Time.utc(2000,10, 1,20, 0, 0), offset: :ignore)))
    assert_equal([TimezonePeriod.new(t1,  t2),
                  TimezonePeriod.new(t2,  t3)], dti.periods_for_local(Timestamp.for(Time.utc(2000,10, 1,20,59,59), offset: :ignore)))
    assert_equal([TimezonePeriod.new(t2,  t3)], dti.periods_for_local(Timestamp.for(Time.utc(2000,10, 1,21, 0, 0), offset: :ignore)))
    assert_equal([TimezonePeriod.new(t2,  t3)], dti.periods_for_local(Timestamp.for(Time.utc(2001, 3, 1,19,59,59), offset: :ignore)))
    assert_equal([],                            dti.periods_for_local(Timestamp.for(Time.utc(2001, 3, 1,20, 0, 0), offset: :ignore)))
    assert_equal([],                            dti.periods_for_local(Timestamp.for(Time.utc(2001, 3, 1,20,30, 0), offset: :ignore)))
    assert_equal([],                            dti.periods_for_local(Timestamp.for(Time.utc(2001, 3, 1,20,59,59), offset: :ignore)))
    assert_equal([TimezonePeriod.new(t3,  t4)], dti.periods_for_local(Timestamp.for(Time.utc(2001, 3, 1,21, 0, 0), offset: :ignore)))
    assert_equal([TimezonePeriod.new(t3,  t4)], dti.periods_for_local(Timestamp.for(Time.utc(2001, 4, 1,19,59,59), offset: :ignore)))
    assert_equal([TimezonePeriod.new(t3,  t4),
                  TimezonePeriod.new(t4,  t5)], dti.periods_for_local(Timestamp.for(Time.utc(2001, 4, 1,20, 0, 0), offset: :ignore)))
    assert_equal([TimezonePeriod.new(t3,  t4),
                  TimezonePeriod.new(t4,  t5)], dti.periods_for_local(Timestamp.for(Time.utc(2001, 4, 1,20,59,59), offset: :ignore)))
    assert_equal([TimezonePeriod.new(t4,  t5)], dti.periods_for_local(Timestamp.for(Time.utc(2001, 4, 1,21, 0, 0), offset: :ignore)))
    assert_equal([TimezonePeriod.new(t4,  t5)], dti.periods_for_local(Timestamp.for(Time.utc(2001,10, 1,19,59,59), offset: :ignore)))
    assert_equal([TimezonePeriod.new(t5,  t6)], dti.periods_for_local(Timestamp.for(Time.utc(2001,10, 1,20, 0, 0), offset: :ignore)))
    assert_equal([TimezonePeriod.new(t5,  t6)], dti.periods_for_local(Timestamp.for(Time.utc(2002, 2, 1,20, 0, 0), offset: :ignore)))
    assert_equal([TimezonePeriod.new(t5,  t6)], dti.periods_for_local(Timestamp.for(Time.utc(2002,10, 1,19,59,59), offset: :ignore)))
    assert_equal([TimezonePeriod.new(t6,  t7)], dti.periods_for_local(Timestamp.for(Time.utc(2002,10, 1,20, 0, 0), offset: :ignore)))
    assert_equal([TimezonePeriod.new(t6,  t7)], dti.periods_for_local(Timestamp.for(Time.utc(2003, 2, 1,19,59,59), offset: :ignore)))
    assert_equal([],                            dti.periods_for_local(Timestamp.for(Time.utc(2003, 2, 1,20, 0, 0), offset: :ignore)))
    assert_equal([],                            dti.periods_for_local(Timestamp.for(Time.utc(2003, 2, 1,20,59,59), offset: :ignore)))
    assert_equal([TimezonePeriod.new(t7, nil)], dti.periods_for_local(Timestamp.for(Time.utc(2003, 2, 1,21, 0, 0), offset: :ignore)))
    assert_equal([TimezonePeriod.new(t7, nil)], dti.periods_for_local(Timestamp.for(Time.utc(2004, 2, 1,20, 0, 0), offset: :ignore)))
    assert_equal([TimezonePeriod.new(t7, nil)], dti.periods_for_local(Timestamp.for(Time.utc(2040, 2, 1,20, 0, 0), offset: :ignore)))
  end

  def test_periods_for_local_warsaw
    dti = TransitionDataTimezoneInfo.new('Test/Europe/Warsaw')
    dti.offset :o1, 5040,    0, :LMT
    dti.offset :o2, 5040,    0, :WMT
    dti.offset :o3, 3600,    0, :CET
    dti.offset :o4, 3600, 3600, :CEST

    dti.transition nil, nil, :o2, Time.utc(1879,12,31,22,36,0).to_i
    dti.transition nil, nil, :o3, Time.utc(1915, 8, 4,22,36,0).to_i
    dti.transition nil, nil, :o4, Time.utc(1916, 4,30,22, 0,0).to_i

    o1 = TimezoneOffset.new(5040,    0, :LMT)
    o2 = TimezoneOffset.new(5040,    0, :WMT)
    o3 = TimezoneOffset.new(3600,    0, :CET)
    o4 = TimezoneOffset.new(3600, 3600, :CEST)

    t1 = TimezoneTransition.new(o2, o1, Time.utc(1879,12,31,22,36,0).to_i)
    t2 = TimezoneTransition.new(o3, o2, Time.utc(1915, 8, 4,22,36,0).to_i)
    t3 = TimezoneTransition.new(o4, o3, Time.utc(1916, 4,30,22, 0,0).to_i)

    assert_equal([TimezonePeriod.new(t1, t2),
                  TimezonePeriod.new(t2, t3)], dti.periods_for_local(Timestamp.for(Time.utc(1915,8,4,23,40,0), offset: :ignore)))
  end

  def test_periods_for_local_single_transition
    dti = TransitionDataTimezoneInfo.new('Test/Zone')
    dti.offset :o1, -3600, 0, :TESTD
    dti.offset :o2, -3600, 0, :TESTS

    dti.transition nil, nil, :o2, Time.utc(2000,7,1,0,0,0).to_i

    o1 = TimezoneOffset.new(-3600, 0, :TESTD)
    o2 = TimezoneOffset.new(-3600, 0, :TESTS)

    t1 = TimezoneTransition.new(o2, o1, Time.utc(2000,7,1,0,0,0).to_i)

    assert_equal([TimezonePeriod.new(nil, t1)], dti.periods_for_local(Timestamp.for(Time.utc(2000,6,30,22,59,59), offset: :ignore)))
    assert_equal([TimezonePeriod.new(t1, nil)], dti.periods_for_local(Timestamp.for(Time.utc(2000,6,30,23, 0, 0), offset: :ignore)))
    assert_equal([TimezonePeriod.new(t1, nil)], dti.periods_for_local(Timestamp.for(Time.utc(2000,7, 1, 0, 0, 0), offset: :ignore)))
  end

  def test_periods_for_local_no_transitions
    dti = TransitionDataTimezoneInfo.new('Test/Zone')
    dti.offset :o1, -17900, 0, :TESTLMT
    dti.offset :o2, -18000, 0, :TEST

    o1 = TimezoneOffset.new(-17900, 0, :TESTLMT)

    assert_equal([TimezonePeriod.new(nil, nil, o1)], dti.periods_for_local(Timestamp.for(Time.utc(2005,1,1,0,0,0), offset: :ignore)))
    assert_equal([TimezonePeriod.new(nil, nil, o1)], dti.periods_for_local(Timestamp.for(Time.utc(2005,1,1,0,0,0), offset: :ignore)))
    assert_equal([TimezonePeriod.new(nil, nil, o1)], dti.periods_for_local(Timestamp.for(Time.utc(2005,1,1,0,0,0), offset: :ignore)))
  end

  def test_periods_for_local_no_offsets
    dti = TransitionDataTimezoneInfo.new('Test/Zone')

    assert_raises(NoOffsetsDefined) { dti.periods_for_local(Timestamp.for(Time.utc(2005,1,1,0,0,0), offset: :ignore)) }
    assert_raises(NoOffsetsDefined) { dti.periods_for_local(Timestamp.for(Time.utc(2005,1,1,0,0,0), offset: :ignore)) }
    assert_raises(NoOffsetsDefined) { dti.periods_for_local(Timestamp.for(Time.utc(2005,1,1,0,0,0), offset: :ignore)) }
  end

  def test_periods_for_local_timestamp_with_specified_offset
    dti = TransitionDataTimezoneInfo.new('Test/Zone')
    dti.offset :o1, -17900, 0, :TESTLMT

    t = Timestamp.for(Time.utc(2005,1,1,0,0,0))

    assert_raises(ArgumentError) { dti.periods_for_local(t) }
  end

  def test_periods_for_local_nil
    dti = TransitionDataTimezoneInfo.new('Test/Zone')
    dti.offset :o1, -17900, 0, :TESTLMT

    assert_raises(ArgumentError) { dti.periods_for_local(nil) }
  end

  def test_transitions_up_to
    dti = TransitionDataTimezoneInfo.new('Test/Zone')
    dti.offset :o1, -17900,    0, :TESTLMT
    dti.offset :o2, -18000, 3600, :TESTD
    dti.offset :o3, -18000,    0, :TESTS
    dti.offset :o4, -21600, 3600, :TESTD

    dti.transition nil, nil, :o2, Time.utc(2010, 4,1,1,0,0).to_i
    dti.transition nil, nil, :o3, Time.utc(2010,10,1,1,0,0).to_i
    dti.transition nil, nil, :o2, Time.utc(2011, 3,1,1,0,0).to_i
    dti.transition nil, nil, :o4, Time.utc(2011, 4,1,1,0,0).to_i
    dti.transition nil, nil, :o3, Time.utc(2011,10,1,1,0,0).to_i

    o1 = TimezoneOffset.new(-17900,    0, :TESTLMT)
    o2 = TimezoneOffset.new(-18000, 3600, :TESTD)
    o3 = TimezoneOffset.new(-18000,    0, :TESTS)
    o4 = TimezoneOffset.new(-21600, 3600, :TESTD)

    t1 = TimezoneTransition.new(o2, o1, Time.utc(2010, 4,1,1,0,0).to_i)
    t2 = TimezoneTransition.new(o3, o2, Time.utc(2010,10,1,1,0,0).to_i)
    t3 = TimezoneTransition.new(o2, o3, Time.utc(2011, 3,1,1,0,0).to_i)
    t4 = TimezoneTransition.new(o4, o2, Time.utc(2011, 4,1,1,0,0).to_i)
    t5 = TimezoneTransition.new(o3, o4, Time.utc(2011,10,1,1,0,0).to_i)

    assert_equal([],               dti.transitions_up_to(Timestamp.for(Time.utc(2010, 4,1,1,0,0))))
    assert_equal([],               dti.transitions_up_to(Timestamp.for(Time.utc(2010, 4,1,1,0,0)), Timestamp.for(Time.utc(2000, 1,1,0,0,0))))
    assert_equal([t1],             dti.transitions_up_to(Timestamp.for(Time.utc(2010, 4,1,1,0,1))))
    assert_equal([t1],             dti.transitions_up_to(Timestamp.for(Time.utc(2010, 4,1,1,0,1)), Timestamp.for(Time.utc(2000, 1,1,0,0,0))))
    assert_equal([t2,t3,t4],       dti.transitions_up_to(Timestamp.for(Time.utc(2011, 4,1,1,0,1)), Timestamp.for(Time.utc(2010,10,1,1,0,0))))
    assert_equal([t2,t3,t4],       dti.transitions_up_to(Timestamp.for(Time.utc(2011,10,1,1,0,0)), Timestamp.for(Time.utc(2010, 4,1,1,0,1))))
    assert_equal([t3],             dti.transitions_up_to(Timestamp.for(Time.utc(2011, 4,1,1,0,0)), Timestamp.for(Time.utc(2010,10,1,1,0,1))))
    assert_equal([],               dti.transitions_up_to(Timestamp.for(Time.utc(2011, 3,1,1,0,0)), Timestamp.for(Time.utc(2010,10,1,1,0,1))))
    assert_equal([t1,t2,t3,t4],    dti.transitions_up_to(Timestamp.for(Time.utc(2011,10,1,1,0,0))))
    assert_equal([t1,t2,t3,t4,t5], dti.transitions_up_to(Timestamp.for(Time.utc(2011,10,1,1,0,1))))
    assert_equal([t1,t2,t3,t4,t5], dti.transitions_up_to(Timestamp.for(Time.utc(2011,10,1,1,0,0,1))))
    assert_equal([t1,t2,t3,t4,t5], dti.transitions_up_to(Timestamp.for(Time.utc(2011,10,1,1,0,1)), Timestamp.for(Time.utc(2010, 4,1,1,0,0))))
    assert_equal([t2,t3,t4,t5],    dti.transitions_up_to(Timestamp.for(Time.utc(2011,10,1,1,0,1)), Timestamp.for(Time.utc(2010, 4,1,1,0,1))))
    assert_equal([t2,t3,t4,t5],    dti.transitions_up_to(Timestamp.for(Time.utc(2011,10,1,1,0,1)), Timestamp.for(Time.utc(2010, 4,1,1,0,0,1))))
    assert_equal([t5],             dti.transitions_up_to(Timestamp.for(Time.utc(2015, 1,1,0,0,0)), Timestamp.for(Time.utc(2011,10,1,1,0,0))))
    assert_equal([],               dti.transitions_up_to(Timestamp.for(Time.utc(2015, 1,1,0,0,0)), Timestamp.for(Time.utc(2011,10,1,1,0,1))))
  end

  def test_transitions_up_to_timestamp_with_zero_utc_offset
    dti = TransitionDataTimezoneInfo.new('Test/Zone')
    dti.offset :o1, -17900,    0, :TESTLMT
    dti.offset :o2, -18000,    0, :TESTS
    dti.offset :o3, -18000, 3600, :TESTD

    dti.transition nil, nil, :o2, Time.utc(2009,12,31,23,59,59).to_i
    dti.transition nil, nil, :o3, Time.utc(2010,7,  1, 0, 0, 0).to_i

    o1 = TimezoneOffset.new(-17900,    0, :TESTLMT)
    o2 = TimezoneOffset.new(-18000,    0, :TESTS)
    o3 = TimezoneOffset.new(-18000, 3600, :TESTD)

    t1 = TimezoneTransition.new(o2, o1, Time.utc(2009,12,31,23,59,59).to_i)
    t2 = TimezoneTransition.new(o3, o2, Time.utc(2010, 7, 1, 0, 0, 0).to_i)

    assert_equal([t1,t2], dti.transitions_up_to(Timestamp.for(Time.new(2010,7,1,0,0,1,0))))
    assert_equal([t1,t2], dti.transitions_up_to(Timestamp.for(Time.new(2011,1,1,0,0,0,0)), Timestamp.for(Time.new(2009,12,31,23,59,59,0))))
  end

  def test_transitions_up_to_timestamp_with_non_zero_utc_offset
    dti = TransitionDataTimezoneInfo.new('Test/Zone')
    dti.offset :o1, -17900,    0, :TESTLMT
    dti.offset :o2, -18000,    0, :TESTS
    dti.offset :o3, -18000, 3600, :TESTD

    dti.transition nil, nil, :o2, Time.utc(2009,12,31,23,59,59).to_i
    dti.transition nil, nil, :o3, Time.utc(2010, 7, 1, 0, 0, 0).to_i

    o1 = TimezoneOffset.new(-17900,    0, :TESTLMT)
    o2 = TimezoneOffset.new(-18000,    0, :TESTS)
    o3 = TimezoneOffset.new(-18000, 3600, :TESTD)

    t1 = TimezoneTransition.new(o2, o1, Time.utc(2009,12,31,23,59,59).to_i)
    t2 = TimezoneTransition.new(o3, o2, Time.utc(2010, 7, 1, 0, 0, 0).to_i)

    assert_equal([t1,t2], dti.transitions_up_to(Timestamp.for(Time.new(2010,6,30,23,0,1,-3600))))
    assert_equal([t1],    dti.transitions_up_to(Timestamp.for(Time.new(2010,7, 1, 1,0,0, 3600))))
    assert_equal([t1,t2], dti.transitions_up_to(Timestamp.for(Time.new(2011,1,1,0,0,0,0)), Timestamp.for(Time.new(2010, 1, 1, 0,59,59, 3600))))
    assert_equal([t2],    dti.transitions_up_to(Timestamp.for(Time.new(2011,1,1,0,0,0,0)), Timestamp.for(Time.new(2009,12,31,23, 0, 0,-3600))))
  end

  def test_transitions_up_to_no_transitions
    dti = TransitionDataTimezoneInfo.new('Test/Zone')
    dti.offset :o1, -17900, 0, :TESTLMT

    assert_equal([], dti.transitions_up_to(Timestamp.for(Time.utc(2015,1,1,0,0,0))))
  end

  def test_transitions_up_to_to_not_greater_than_from
    dti = TransitionDataTimezoneInfo.new('Test/Zone')
    dti.offset :o1, -17900, 0, :TESTLMT

    to = Timestamp.for(Time.utc(2012,8,1,0,0,0))
    from = Timestamp.for(Time.utc(2013,8,1,0,0,0))

    assert_raises(ArgumentError) { dti.transitions_up_to(to, from) }
  end

  def test_transitions_up_to_to_not_greater_than_from_subsecond
    dti = TransitionDataTimezoneInfo.new('Test/Zone')
    dti.offset :o1, -17900, 0, :TESTLMT

    to = Timestamp.for(Time.utc(2012,8,1,0,0,0))
    from = Timestamp.for(Time.utc(2012,8,1,0,0,0,1))

    assert_raises(ArgumentError) { dti.transitions_up_to(to, from) }
  end

  def test_transitions_up_to_to_timestamp_with_unspecified_offset
    dti = TransitionDataTimezoneInfo.new('Test/Zone')
    dti.offset :o1, -17900, 0, :TESTLMT

    to = Timestamp.for(Time.utc(2015,1,1,0,0,0), offset: :ignore)

    assert_raises(ArgumentError) { dti.transitions_up_to(to) }
  end

  def test_transitions_up_to_from_timestamp_with_unspecified_offset
    dti = TransitionDataTimezoneInfo.new('Test/Zone')
    dti.offset :o1, -17900, 0, :TESTLMT

    to = Timestamp.for(Time.utc(2015,1,1,0,0,0))
    from = Timestamp.for(Time.utc(2014,1,1,0,0,0), offset: :ignore)

    assert_raises(ArgumentError) { dti.transitions_up_to(to, from) }
  end

  def test_transitions_up_to_to_timestamp_nil
    dti = TransitionDataTimezoneInfo.new('Test/Zone')
    dti.offset :o1, -17900, 0, :TESTLMT

    assert_raises(ArgumentError) { dti.transitions_up_to(nil) }
  end
end
