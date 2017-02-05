require File.join(File.expand_path(File.dirname(__FILE__)), 'test_utils')

include TZInfo

class TCLocalTime < Minitest::Test
  def localized_time(year, month, day, hour, minute, second, tz_offset_or_period)
    period = tz_offset_or_period.kind_of?(TimezonePeriod) ? tz_offset_or_period : TimezonePeriod.new(nil, nil, tz_offset_or_period)
    LocalTime.new(year, month, day, hour, minute, second, period.utc_total_offset).localize(period)
  end

  def assert_is_time_or_extended_time_with_nil_period(value)
    if value.kind_of?(LocalTime)
      assert_nil(value.period)
    else
      assert_equal(Time, value.class)
    end
  end

  def test_localize_unchanged_offset
    [LocalTime.new(2017,1,15,23,0,Rational(11,10),0), LocalTime.new(2017,1,15,23,0,Rational(11,10),3600)].each do |lt|
      p1 = TimezonePeriod.new(nil, nil, TimezoneOffset.new(lt.utc_offset, 0, :TEST))
      p2 = TimezonePeriod.new(nil, nil, TimezoneOffset.new(0, lt.utc_offset, :TEST))
      assert_nil(lt.period)
      assert_same(lt, lt.localize(p1))
      assert_same(p1, lt.period)
      assert_same(lt, lt.localize(p2))
      assert_same(p2, lt.period)
    end
  end

  def test_localize_set_offset
    p = TimezonePeriod.new(nil, nil, TimezoneOffset.new(3600, 0, :TEST))

    [LocalTime.utc(2017,1,15,23,0,Rational(11,10)), LocalTime.new(2017,1,15,23,0,Rational(11,10),0), LocalTime.new(2017,1,15,22,0,Rational(11,10),-3600)].each do |lt|
      assert_nil(lt.period)
      assert_same(lt, lt.localize(p))
      assert_same(p, lt.period)
      assert_equal_with_offset(Time.new(2017,1,16,0,0,Rational(11,10),3600), lt)
    end
  end

  def test_localize_utc
    lt = LocalTime.utc(2017,1,15,23,0,Rational(11,10))
    p = TimezonePeriod.new(nil, nil, TimezoneOffset.new(0, 0, :TEST))

    assert_equal(true, lt.utc?)
    assert_same(lt, lt.localize(p))
    assert_same(p, lt.period)
    assert_equal_with_offset(Time.new(2017,1,15,23,0,Rational(11,10),0), lt)
  end

  def test_localize_nil_period
    lt = LocalTime.new(2017,1,15,23,0,Rational(11,10),0)
    error = assert_raises(ArgumentError) { lt.localize(nil) }
    assert_match(/\bperiod\b/, error.message)
  end

  def test_strftime
    lt = localized_time(2017,1,15,23,0,1,TimezoneOffset.new(0, 3600, :TEST))
    assert_equal('23:00:01 TEST', lt.strftime('%H:%M:%S %Z'))
    assert_equal('TEST', lt.strftime('%Z'))
    assert_equal('%ZTEST', lt.strftime('%%Z%Z'))
    assert_equal('TEST TEST', lt.strftime('%Z %Z'))
    assert_equal('TEST %Z %TEST %%Z %%TEST', lt.strftime('%Z %%Z %%%Z %%%%Z %%%%%Z'))
  end

  def test_strftime_handles_percent_in_abbreviation
    lt = localized_time(2017,1,15,23,0,1,TimezoneOffset.new(0, 0, :'%H:%M:%S'))
    assert_equal('%H:%M:%S', lt.strftime('%Z'))
  end

  def test_strftime_nil_period
    # Will use Time#strftime's handling of the %Z directive.
    t = Time.new(2017,1,15,23,0,1,3600)
    lt = LocalTime.new(2017,1,15,23,0,1,3600)
    assert_nil(lt.period)

    # JRuby 1.7 returns '+01:00' instead of empty string.
    assert_equal(t.strftime('%Z'), lt.strftime('%Z'))
  end

  def test_strftime_nil_format
    lt = localized_time(2017,1,15,23,0,1,TimezoneOffset.new(0, 0, :TEST))
    error = assert_raises(ArgumentError) { lt.strftime(nil) }
    assert_match(/\bformat\b/, error.message)
  end

  def test_add
    lt = localized_time(2017,1,15,23,0,1,TimezoneOffset.new(0, 3600, :TEST))

    # MRI returns Time. JRuby returns LocalTime.
    assert_is_time_or_extended_time_with_nil_period(lt + 1)
  end

  def test_subtract
    lt = localized_time(2017,1,15,23,0,1,TimezoneOffset.new(0, 3600, :TEST))

    # MRI returns Time. JRuby returns LocalTime.
    assert_is_time_or_extended_time_with_nil_period(lt - 1)
  end

  def test_compare
    o = TimezoneOffset.new(0, 0, :TEST)
    t1 = Time.new(2017,1,15,23,0,1,0)
    t2 = Time.new(2017,1,15,23,0,2,0)
    lt1 = localized_time(2017,1,15,23,0,1,o)
    lt2 = localized_time(2017,1,15,23,0,2,o)

    assert_equal(0, lt1 <=> lt1)
    assert_equal(0, lt1 <=> t1)
    assert_equal(0, t1 <=> lt1)

    assert_equal(-1, lt1 <=> lt2)
    assert_equal(-1, lt1 <=> t2)
    assert_equal(-1, t1 <=> lt2)

    assert_equal(1, lt2 <=> lt1)
    assert_equal(1, lt2 <=> t1)
    assert_equal(1, t2 <=> lt1)
  end

  def test_dst
    lt1 = localized_time(2017,1,15,23,0,1,TimezoneOffset.new(   0,    0, :TEST))
    lt2 = localized_time(2017,1,15,23,0,1,TimezoneOffset.new(   0, 3600, :TEST))
    lt3 = localized_time(2017,1,15,23,0,1,TimezoneOffset.new(3600,    0, :TEST))
    lt4 = localized_time(2017,1,15,23,0,1,TimezoneOffset.new(3600, 3600, :TEST))

    assert_equal(false, lt1.dst?)
    assert_equal(true,  lt2.dst?)
    assert_equal(false, lt3.dst?)
    assert_equal(true,  lt4.dst?)
  end

  def test_dst_nil_period
    lt = LocalTime.new(2017,1,15,23,0,1,3600)
    assert_nil(lt.period)
    assert_equal(false, lt.dst?)
  end

  def test_eql
    o = TimezoneOffset.new(0, 0, :TEST)
    t1 = Time.new(2017,1,15,23,0,1,0)
    t2 = Time.new(2017,1,15,23,0,2,0)
    lt1 = localized_time(2017,1,15,23,0,1,o)
    lt2 = localized_time(2017,1,15,23,0,2,o)

    assert_equal(true, lt1.eql?(lt1))
    assert_equal(true, lt1.eql?(t1))
    assert_equal(true, t1.eql?(lt1))

    assert_equal(false, lt1.eql?(lt2))
    assert_equal(false, lt1.eql?(t2))
    assert_equal(false, t1.eql?(lt2))
  end

  def test_getgm
    lt = localized_time(2017,1,15,23,0,1,TimezoneOffset.new(0, 0, :TEST))

    # MRI returns LocalTime. JRuby returns Time.
    assert_is_time_or_extended_time_with_nil_period(lt.getgm)
  end

  def test_getlocal
    lt = localized_time(2017,1,15,23,0,1,TimezoneOffset.new(0, 0, :TEST))

    # MRI returns LocalTime. JRuby returns Time.
    assert_is_time_or_extended_time_with_nil_period(lt.getlocal(0))
  end

  def test_getutc
    lt = localized_time(2017,1,15,23,0,1,TimezoneOffset.new(0, 0, :TEST))

    # MRI returns LocalTime. JRuby returns Time.
    assert_is_time_or_extended_time_with_nil_period(lt.getutc)
  end

  def test_gmtime
    lt = localized_time(2017,1,15,23,0,1,TimezoneOffset.new(3600, 0, :TEST))
    assert_same(lt, lt.gmtime)
    assert_equal(true, lt.utc?)
    assert_nil(lt.period)
  end

  def test_isdst
    lt1 = localized_time(2017,1,15,23,0,1,TimezoneOffset.new(   0,    0, :TEST))
    lt2 = localized_time(2017,1,15,23,0,1,TimezoneOffset.new(   0, 3600, :TEST))
    lt3 = localized_time(2017,1,15,23,0,1,TimezoneOffset.new(3600,    0, :TEST))
    lt4 = localized_time(2017,1,15,23,0,1,TimezoneOffset.new(3600, 3600, :TEST))

    assert_equal(false, lt1.isdst)
    assert_equal(true,  lt2.isdst)
    assert_equal(false, lt3.isdst)
    assert_equal(true,  lt4.isdst)
  end

  def test_isdst_nil_period
    lt = LocalTime.new(2017,1,15,23,0,1,3600)
    assert_nil(lt.period)
    assert_equal(false, lt.isdst)
  end

  def test_localtime_without_offset
    lt = localized_time(2017,1,15,23,0,1,TimezoneOffset.new(0, 0, :TEST))
    assert_same(lt, lt.localtime)
    assert_nil(lt.period)
  end

  def test_localtime_with_offset
    lt = localized_time(2017,1,15,23,0,1,TimezoneOffset.new(0, 0, :TEST))
    assert_same(lt, lt.localtime(3600))
    assert_equal(3600, lt.utc_offset)
    assert_nil(lt.period)
  end

  def test_localtime_with_offset_unchanged
    lt = localized_time(2017,1,15,23,0,1,TimezoneOffset.new(3600, 0, :TEST))
    assert_same(lt, lt.localtime(3600))
    assert_equal(3600, lt.utc_offset)
    assert_nil(lt.period)
  end

  def test_round
    p = TimezonePeriod.new(nil, nil, TimezoneOffset.new(3600, 0, :TEST))
    lt = localized_time(2017,1,15,23,0,Rational(111,100),p)

    r = lt.round
    r0 = lt.round(0)
    r1 = lt.round(1)

    [r, r0, r1].each do |result|
      assert_kind_of(LocalTime, result)
      assert_same(p, result.period)
    end

    assert_equal_with_offset(Time.new(2017,1,15,23,0,1,3600), r)
    assert_equal_with_offset(Time.new(2017,1,15,23,0,1,3600), r0)
    assert_equal_with_offset(Time.new(2017,1,15,23,0,Rational(11,10),3600), r1)
  end

  def test_round_nil_period
    lt = LocalTime.new(2017,1,15,23,0,Rational(111,100),3600)
    assert_nil(lt.period)

    r = lt.round
    r0 = lt.round(0)
    r1 = lt.round(1)

    [r, r0, r1].each { |result| assert_equal(Time, result.class) }

    assert_equal_with_offset(Time.new(2017,1,15,23,0,1,3600), r)
    assert_equal_with_offset(Time.new(2017,1,15,23,0,1,3600), r0)
    assert_equal_with_offset(Time.new(2017,1,15,23,0,Rational(11,10),3600), r1)
  end

  def test_succ
    lt = localized_time(2017,1,15,23,0,1,TimezoneOffset.new(0, 3600, :BST))

    # succ is obsolete and outputs a warning.
    without_warnings do
      assert_is_time_or_extended_time_with_nil_period(lt.succ)
    end
  end

  def test_to_a
    lt1 = localized_time(2017,1,15,23,0,1,TimezoneOffset.new(   0,    0, :TEST))
    lt2 = localized_time(2017,1,15,23,0,1,TimezoneOffset.new(   0, 3600, :TEST))
    lt3 = localized_time(2017,1,15,23,0,1,TimezoneOffset.new(3600,    0, :TEST))
    lt4 = localized_time(2017,1,15,23,0,1,TimezoneOffset.new(3600, 3600, :TEST))

    assert_equal([1,0,23,15,1,2017,0,15,false,'TEST'], lt1.to_a)
    assert_equal([1,0,23,15,1,2017,0,15,true, 'TEST'], lt2.to_a)
    assert_equal([1,0,23,15,1,2017,0,15,false,'TEST'], lt3.to_a)
    assert_equal([1,0,23,15,1,2017,0,15,true, 'TEST'], lt4.to_a)
  end

  def test_to_a_nil_period
    t = Time.new(2017,1,15,23,0,1,3600)
    lt = LocalTime.new(2017,1,15,23,0,1,3600)
    assert_nil(lt.period)

    # For local times, the last element is nil on MRI and empty string on JRuby.
    # Compare with the actual Time#to_a output.
    assert_equal(t.to_a, lt.to_a)
  end

  def test_utc
    lt = localized_time(2017,1,15,23,0,1,TimezoneOffset.new(3600, 0, :TEST))
    assert_same(lt, lt.utc)
    assert_equal(true, lt.utc?)
    assert_nil(lt.period)
  end

  def test_zone
    lt1 = localized_time(2017,1,15,23,0,1,TimezoneOffset.new(3600, 0, :TEST))
    lt2 = LocalTime.utc(2017,1,15,23,0,1).localize(TimezonePeriod.new(nil, nil, TimezoneOffset.new(0, 0, :GMT)))
    assert_equal('TEST', lt1.zone)
    assert_equal('GMT', lt2.zone)
  end

  def test_zone_nil_period
    t = Time.new(2017,1,15,23,0,1,3600)
    lt = LocalTime.new(2017,1,15,23,0,1,3600)
    assert_nil(lt.period)

    # For local times, zone returns nil on MRI and empty string on JRuby.
    # Compare with the actual Time#zone output.
    assert_nil_or_equal(t.zone, lt.zone)
  end

  def test_to_datetime
    p = TimezonePeriod.new(nil, nil, TimezoneOffset.new(3600, 0, :TEST))
    lt = localized_time(2017,1,15,23,0,Rational(11,10),p)
    d = lt.to_datetime
    assert_kind_of(LocalDateTime, d)
    assert_same(p, d.period)
    assert_equal_with_offset(DateTime.new(2017,1,15,23,0,Rational(11,10),Rational(1,24)), d)
  end

  def test_to_datetime_nil_period
    lt = LocalTime.new(2017,1,15,23,0,Rational(11,10),3600)
    assert_nil(lt.period)
    d = lt.to_datetime
    assert_equal(DateTime, d.class)
    assert_equal_with_offset(DateTime.new(2017,1,15,23,0,Rational(11,10),Rational(1,24)), d)
  end
end
