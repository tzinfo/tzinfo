# frozen_string_literal: true

require File.join(File.expand_path(File.dirname(__FILE__)), 'test_utils')

include TZInfo

class TCLocalTimestamp < Minitest::Test
  def new_timestamp(year, month, day, hour, minute, second, offset, klass = Timestamp)
    time = Time.new(year, month, day, hour, minute, second, offset == :utc ? 0 : offset)
    klass.new(time.to_i, time.subsec, offset)
  end

  def localized_timestamp(year, month, day, hour, minute, second, tz_offset_or_period)
    period = tz_offset_or_period.kind_of?(TimezonePeriod) ? tz_offset_or_period : OffsetTimezonePeriod.new(tz_offset_or_period)
    new_timestamp(year, month, day, hour, minute, second, period.utc_total_offset, LocalTimestamp).localize(period)
  end

  def test_class_localize
    p = OffsetTimezonePeriod.new(TimezoneOffset.new(7200, 0, :TEST))
    [new_timestamp(2017,1,15,23,0,0,nil), new_timestamp(2017,1,15,23,0,0,:utc), new_timestamp(2017,1,15,23,0,0,0), new_timestamp(2017,1,15,23,0,Rational(11,10),0), new_timestamp(2017,1,15,23,0,Rational(11,10),3600)].each do |t|
      lt = LocalTimestamp.localize(t, p)
      assert_kind_of(LocalTimestamp, lt)
      assert_equal(t.value, lt.value)
      assert_equal(t.sub_second, lt.sub_second)
      assert_equal(7200, lt.utc_offset)
      assert_same(p, lt.period)
    end
  end

  def test_class_localize_timestamp_nil
    p = OffsetTimezonePeriod.new(TimezoneOffset.new(7200, 0, :TEST))
    error = assert_raises(ArgumentError) { LocalTimestamp.localize(nil, p) }
    assert_match(/\btimestamp\b/, error.message)
  end

  def test_class_localize_period_nil
    t = new_timestamp(2017,1,15,23,0,0,0)
    error = assert_raises(ArgumentError) { LocalTimestamp.localize(t, nil) }
    assert_match(/\bperiod\b/, error.message)
  end

  def test_localize
    [new_timestamp(2017,1,15,23,0,Rational(11,10),0,LocalTimestamp), new_timestamp(2017,1,15,23,0,Rational(11,10),3600,LocalTimestamp)].each do |lt|
      p1 = OffsetTimezonePeriod.new(TimezoneOffset.new(lt.utc_offset, 0, :TEST))
      p2 = OffsetTimezonePeriod.new(TimezoneOffset.new(0, lt.utc_offset, :TEST))
      assert_nil(lt.period)
      assert_same(lt, lt.localize(p1))
      assert_same(p1, lt.period)
      assert_same(lt, lt.localize(p2))
      assert_same(p2, lt.period)
    end
  end

  def test_localize_utc
    lt = LocalTimestamp.create(2017,1,15,23,0,1,Rational(1,10),:utc)
    p = OffsetTimezonePeriod.new(TimezoneOffset.new(0, 0, :TEST))
    error = assert_raises(ArgumentError) { lt.localize(p) }
    assert_match(/\bmatch\b/, error.message)
  end

  def test_localize_unspecified_offset
    lt = LocalTimestamp.create(2017,1,15,23,0,1,Rational(1,10))
    p = OffsetTimezonePeriod.new(TimezoneOffset.new(0, 0, :TEST))
    error = assert_raises(ArgumentError) { lt.localize(p) }
    assert_match(/\bmatch\b/, error.message)
  end

  def test_localize_offset_mismatch
    lt1 = new_timestamp(2017,1,15,23,0,Rational(11,10),0,LocalTimestamp)
    p1a = OffsetTimezonePeriod.new(TimezoneOffset.new(3600,    0, :TEST))
    p1b = OffsetTimezonePeriod.new(TimezoneOffset.new(   0, 3600, :TEST))

    lt2 = new_timestamp(2017,1,15,23,0,Rational(11,10),3600,LocalTimestamp)
    p2a = OffsetTimezonePeriod.new(TimezoneOffset.new(3600, 3600, :TEST))
    p2b = OffsetTimezonePeriod.new(TimezoneOffset.new(   0,    0, :TEST))

    [[lt1, [p1a, p1b]], [lt2, [p2a, p2b]]].each do |lt, periods|
      periods.each do |p|
        error = assert_raises(ArgumentError) { lt.localize(p) }
        assert_match(/\bmatch\b/, error.message)
      end
    end
  end

  def test_localize_nil_period
    lt = new_timestamp(2017,1,15,23,0,Rational(11,10),0,LocalTimestamp)
    error = assert_raises(ArgumentError) { lt.localize(nil) }
    assert_match(/\bperiod\b/, error.message)
  end

  def test_strftime
    lt = localized_timestamp(2017,1,15,23,0,1,TimezoneOffset.new(0, 3600, :TEST))
    assert_equal('23:00:01 TEST', lt.strftime('%H:%M:%S %Z'))
    assert_equal('TEST', lt.strftime('%Z'))
    assert_equal('%ZTEST', lt.strftime('%%Z%Z'))
    assert_equal('TEST TEST', lt.strftime('%Z %Z'))
    assert_equal('TEST %Z %TEST %%Z %%TEST', lt.strftime('%Z %%Z %%%Z %%%%Z %%%%%Z'))
  end

  def test_strftime_handles_percent_in_abbreviation
    lt = localized_timestamp(2017,1,15,23,0,1,TimezoneOffset.new(0, 0, :'%H:%M:%S'))
    assert_equal('%H:%M:%S', lt.strftime('%Z'))
  end

  def test_strftime_nil_period
    t = new_timestamp(2017,1,15,23,0,1,3600)
    lt = new_timestamp(2017,1,15,23,0,1,3600,LocalTimestamp)
    assert_nil(lt.period)

    # JRuby 1.7 returns '+01:00' instead of empty string.
    assert_equal(t.strftime('%Z'), lt.strftime('%Z'))
  end

  def test_strftime_nil_format
    lt = localized_timestamp(2017,1,15,23,0,1,TimezoneOffset.new(0, 3600, :TEST))
    error = assert_raises(ArgumentError) { lt.strftime(nil) }
    assert_match(/\bformat\b/, error.message)
  end

  def test_add
    lt = localized_timestamp(2017,1,15,23,0,1,TimezoneOffset.new(0, 3600, :TEST))
    assert_equal(Timestamp, (lt + 1).class)
  end

  def test_subtract
    lt = localized_timestamp(2017,1,15,23,0,1,TimezoneOffset.new(0, 3600, :TEST))
    assert_equal(Timestamp, (lt - 1).class)
  end

  def test_utc
    lt = localized_timestamp(2017,1,15,23,0,1,TimezoneOffset.new(0, 0, :TEST))
    assert_equal(Timestamp, lt.utc.class)
  end

  def test_to_time
    p = OffsetTimezonePeriod.new(TimezoneOffset.new(0, 3600, :TEST))
    lt = localized_timestamp(2017,1,15,23,0,Rational(11,10),p)
    t = lt.to_time
    assert_kind_of(LocalTime, t)
    assert_same(p, t.period)
    assert_equal_with_offset(Time.new(2017,1,15,23,0,Rational(11,10),3600), t)
  end

  def test_to_time_nil_period
    lt = new_timestamp(2017,1,15,23,0,Rational(11,10),3600,LocalTimestamp)
    assert_nil(lt.period)
    t = lt.to_time
    assert_equal(Time, t.class)
    assert_equal_with_offset(Time.new(2017,1,15,23,0,Rational(11,10),3600), t)
  end

  def test_to_datetime
    p = OffsetTimezonePeriod.new(TimezoneOffset.new(0, 3600, :TEST))
    lt = localized_timestamp(2017,1,15,23,0,Rational(11,10),p)
    dt = lt.to_datetime
    assert_kind_of(LocalDateTime, dt)
    assert_same(p, dt.period)
    assert_equal_with_offset(DateTime.new(2017,1,15,23,0,Rational(11,10),Rational(1,24)), dt)
  end

  def test_to_datetime_nil_period
    lt = new_timestamp(2017,1,15,23,0,Rational(11,10),3600,LocalTimestamp)
    assert_nil(lt.period)
    dt = lt.to_datetime
    assert_equal(DateTime, dt.class)
    assert_equal_with_offset(DateTime.new(2017,1,15,23,0,Rational(11,10),Rational(1,24)), dt)
  end

  def test_compare
    o = TimezoneOffset.new(0, 0, :TEST)
    t1 = new_timestamp(2017,1,15,23,0,1,0)
    t2 = new_timestamp(2017,1,15,23,0,2,0)
    lt1 = localized_timestamp(2017,1,15,23,0,1,o)
    lt2 = localized_timestamp(2017,1,15,23,0,2,o)

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

  def test_inspect
    assert_equal('#<TZInfo::LocalTimestamp: @value=1476316800, @sub_second=0, @utc_offset=0, @utc=false>', localized_timestamp(2016,10,13,0,0,0,TimezoneOffset.new(0, 0, :TEST)).inspect)
    assert_equal('#<TZInfo::LocalTimestamp: @value=1476316800, @sub_second=1/10, @utc_offset=3600, @utc=false>', localized_timestamp(2016,10,13,1,0,Rational(1,10),TimezoneOffset.new(3600, 0, :TEST)).inspect)
    assert_equal('#<TZInfo::LocalTimestamp: @value=1476316800, @sub_second=0, @utc_offset=0, @utc=true>', LocalTimestamp.utc(1476316800, Rational(0, 1)).inspect)
  end

  def test_create_returns_local_timestamp
    t = LocalTimestamp.create(2018, 1, 10, 12, 0, 0, 0, 3600)
    assert_kind_of(LocalTimestamp, t)
  end
end
