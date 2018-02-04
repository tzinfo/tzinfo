# frozen_string_literal: true

require File.join(File.expand_path(File.dirname(__FILE__)), 'test_utils')

include TZInfo

class TCLocalDateTime < Minitest::Test
  def localized_datetime(year, month, day, hour, minute, second, tz_offset_or_period)
    period = tz_offset_or_period.kind_of?(TimezonePeriod) ? tz_offset_or_period : OffsetTimezonePeriod.new(tz_offset_or_period)
    LocalDateTime.new(year, month, day, hour, minute, second, period.utc_total_offset.to_r / 86400).localize(period)
  end

  def test_localize
    [LocalDateTime.new(2017,1,15,23,0,Rational(11,10),0), LocalDateTime.new(2017,1,15,23,0,Rational(11,10),Rational(1,24))].each do |ldt|
      p1 = OffsetTimezonePeriod.new(TimezoneOffset.new(ldt.offset * 86400, 0, :TEST))
      p2 = OffsetTimezonePeriod.new(TimezoneOffset.new(0, ldt.offset * 86400, :TEST))
      assert_nil(ldt.period)
      assert_same(ldt, ldt.localize(p1))
      assert_same(p1, ldt.period)
      assert_same(ldt, ldt.localize(p2))
      assert_same(p2, ldt.period)
    end
  end

  def test_localize_offset_mismatch
    ldt1 = LocalDateTime.new(2017,1,15,23,0,Rational(11,10),0)
    p1a = OffsetTimezonePeriod.new(TimezoneOffset.new(3600,    0, :TEST))
    p1b = OffsetTimezonePeriod.new(TimezoneOffset.new(   0, 3600, :TEST))

    ldt2 = LocalDateTime.new(2017,1,15,23,0,Rational(11,10),Rational(1,24))
    p2a = OffsetTimezonePeriod.new(TimezoneOffset.new(3600, 3600, :TEST))
    p2b = OffsetTimezonePeriod.new(TimezoneOffset.new(   0,    0, :TEST))

    [[ldt1, [p1a, p1b]], [ldt2, [p2a, p2b]]].each do |ldt, periods|
      periods.each do |p|
        error = assert_raises(ArgumentError) { ldt.localize(p) }
        assert_match(/\bmatch\b/, error.message)
      end
    end
  end

  def test_localize_nil_period
    lt = LocalDateTime.new(2017,1,15,23,0,Rational(11,10),0)
    error = assert_raises(ArgumentError) { lt.localize(nil) }
    assert_match(/\bperiod\b/, error.message)
  end

  def test_strftime
    ldt = localized_datetime(2017,1,15,23,0,1,TimezoneOffset.new(0, 3600, :TEST))
    assert_equal('23:00:01 TEST', ldt.strftime('%H:%M:%S %Z'))
    assert_equal('TEST', ldt.strftime('%Z'))
    assert_equal('%ZTEST', ldt.strftime('%%Z%Z'))
    assert_equal('TEST TEST', ldt.strftime('%Z %Z'))
    assert_equal('TEST %Z %TEST %%Z %%TEST', ldt.strftime('%Z %%Z %%%Z %%%%Z %%%%%Z'))
  end

  def test_strftime_handles_percent_in_abbreviation
    ldt = localized_datetime(2017,1,15,23,0,1,TimezoneOffset.new(0, 0, :'%H:%M:%S'))
    assert_equal('%H:%M:%S', ldt.strftime('%Z'))
  end

  def test_strftime_nil_period
    # Will use DateTime#strftime's handling of the %Z directive.
    ldt = LocalDateTime.new(2017,1,15,23,0,1,Rational(1,24))
    assert_nil(ldt.period)
    assert_equal('+01:00', ldt.strftime('%Z'))
  end

  def test_strftime_nil_format
    ldt = localized_datetime(2017,1,15,23,0,1,TimezoneOffset.new(0, 0, :TEST))
    error = assert_raises(ArgumentError) { ldt.strftime(nil) }
    assert_match(/\bformat\b/, error.message)
  end

  def test_to_date
    ldt = localized_datetime(2017,1,15,23,0,1,TimezoneOffset.new(0, 3600, :TEST))
    d = ldt.to_date
    assert_equal(Date, d.class)
    assert_equal(Date.new(2017,1,15), d)
  end

  def test_to_datetime
    ldt = localized_datetime(2017,1,15,23,0,1,TimezoneOffset.new(0, 3600, :TEST))
    assert_same(ldt, ldt.to_datetime)
  end

  def test_to_time
    p = OffsetTimezonePeriod.new(TimezoneOffset.new(3600, 0, :TEST))
    ldt = localized_datetime(2017,1,15,23,0,Rational(11,10),p)
    t = ldt.to_time
    assert_kind_of(LocalTime, t)
    assert_same(p, t.period)
    assert_equal_with_offset(Time.new(2017,1,15,23,0,Rational(11,10),3600), t)
  end

  def test_to_time_nil_period
    ldt = LocalDateTime.new(2017,1,15,23,0,Rational(11,10),Rational(1,24))
    assert_nil(ldt.period)
    t = ldt.to_time
    assert_equal(Time, t.class)

    # Depending on the version of Ruby, this will return a Time instance using
    # the local system offset or the offset of the DateTime. Don't test the
    # offset.
    assert_equal(Time.new(2017,1,15,23,0,Rational(11,10),3600), t)
  end

  def test_add
    ldt = localized_datetime(2017,1,15,23,0,1,TimezoneOffset.new(0, 3600, :TEST))
    assert_nil((ldt + 1).period)
  end

  def test_subtract
    ldt = localized_datetime(2017,1,15,23,0,1,TimezoneOffset.new(0, 3600, :TEST))
    assert_nil((ldt - 1).period)
  end

  def test_add_months
    ldt = localized_datetime(2017,1,15,23,0,1,TimezoneOffset.new(0, 3600, :TEST))
    assert_nil((ldt >> 1).period)
  end

  def test_subtract_months
    ldt = localized_datetime(2017,1,15,23,0,1,TimezoneOffset.new(0, 3600, :TEST))
    assert_nil((ldt << 1).period)
  end

  def test_compare
    o = TimezoneOffset.new(0, 0, :TEST)
    dt1 = DateTime.new(2017,1,15,23,0,1)
    dt2 = DateTime.new(2017,1,15,23,0,2)
    ldt1 = localized_datetime(2017,1,15,23,0,1,o)
    ldt2 = localized_datetime(2017,1,15,23,0,2,o)

    assert_equal(0, ldt1 <=> ldt1)
    assert_equal(0, ldt1 <=> dt1)
    assert_equal(0, dt1 <=> ldt1)

    assert_equal(-1, ldt1 <=> ldt2)
    assert_equal(-1, ldt1 <=> dt2)
    assert_equal(-1, dt1 <=> ldt2)

    assert_equal(1, ldt2 <=> ldt1)
    assert_equal(1, ldt2 <=> dt1)
    assert_equal(1, dt2 <=> ldt1)
  end

  def test_day_equals
    o = TimezoneOffset.new(0, 0, :TEST)
    dt1 = DateTime.new(2017,1,15,23,0,1)
    dt2 = DateTime.new(2017,1,16,23,0,1)
    ldt1 = localized_datetime(2017,1,15,23,0,1,o)
    ldt2 = localized_datetime(2017,1,16,23,0,1,o)
    d1 = Date.new(2017,1,15)
    d2 = Date.new(2017,1,16)

    assert_equal(true, ldt1 === ldt1)
    assert_equal(true, ldt1 === dt1)
    assert_equal(true, ldt1 === d1)
    assert_equal(true, dt1 === ldt1)
    assert_equal(true, d1 === ldt1)

    assert_equal(false, ldt1 === ldt2)
    assert_equal(false, ldt1 === dt2)
    assert_equal(false, ldt1 === d2)
    assert_equal(false, dt2 === ldt1)
    assert_equal(false, d2 === ldt1)
  end

  def test_downto_block
    ldt = localized_datetime(2017,1,15,23,0,1,TimezoneOffset.new(0, 0, :TEST))
    block_call_count = 0

    result = ldt.downto(Date.new(2017,1,14)) do |v|
      assert_nil(v.period)
      block_call_count += 1
    end

    assert_same(ldt, result)
    assert_equal(2, block_call_count)
  end

  def test_downto_enumerator
    ldt = localized_datetime(2017,1,15,23,0,1,TimezoneOffset.new(0, 0, :TEST))
    block_call_count = 0

    ldt.downto(Date.new(2017,1,14)).each do |v|
      assert_nil(v.period)
      block_call_count += 1
    end

    assert_equal(2, block_call_count)
  end

  def new_start_wrapper_test(method, start)
    p = OffsetTimezonePeriod.new(TimezoneOffset.new(0, 0, :TEST))
    ldt = localized_datetime(2017,1,15,23,0,1,p)
    result = ldt.public_send(method)
    assert_equal(start, result.start)
    assert_same(p, result.period)
  end

  def test_england
    new_start_wrapper_test(:england, Date::ENGLAND)
  end

  def test_gregorian
    new_start_wrapper_test(:gregorian, Date::GREGORIAN)
  end

  def test_italy
    new_start_wrapper_test(:italy, Date::ITALY)
  end

  def test_julian
    new_start_wrapper_test(:julian, Date::JULIAN)
  end

  def test_new_start
    p = OffsetTimezonePeriod.new(TimezoneOffset.new(0, 0, :TEST))
    ldt = localized_datetime(2017,1,15,23,0,1,p)
    result = ldt.new_start(Date::ENGLAND)
    assert_equal(Date::ENGLAND, result.start)
    assert_same(p, result.period)
  end

  def test_next
    ldt = localized_datetime(2017,1,15,23,0,1,TimezoneOffset.new(0, 0, :TEST))
    assert_nil(ldt.next.period)
  end

  def next_prev_test(type, unit)
    dt = DateTime.new(2017,1,15,23,0,1)
    ldt = localized_datetime(2017,1,15,23,0,1,TimezoneOffset.new(0, 0, :TEST))
    method = "#{type}_#{unit}"

    no_args = ldt.public_send(method)
    assert_equal_with_offset(dt.public_send(method), no_args)
    assert_nil(no_args.period)

    args = ldt.public_send(method, 2)
    assert_equal_with_offset(dt.public_send(method, 2), args)
    assert_nil(args.period)
  end

  def next_test(unit)
    next_prev_test(:next, unit)
  end

  def test_next_day
    next_test(:day)
  end

  def test_next_month
    next_test(:month)
  end

  def test_next_year
    next_test(:year)
  end

  def prev_test(unit)
    next_prev_test(:prev, unit)
  end

  def test_prev_day
    prev_test(:day)
  end

  def test_prev_month
    prev_test(:month)
  end

  def test_prev_year
    prev_test(:year)
  end

  def test_step_block
    ldt = localized_datetime(2017,1,15,23,0,1,TimezoneOffset.new(0, 0, :TEST))
    block_call_count = 0

    result = ldt.step(Date.new(2017,1,17)) do |v|
      assert_nil(v.period)
      block_call_count += 1
    end

    assert_same(ldt, result)
    assert_equal(2, block_call_count)
  end

  def test_step_enumerator
    ldt = localized_datetime(2017,1,15,23,0,1,TimezoneOffset.new(0, 0, :TEST))
    block_call_count = 0

    ldt.step(Date.new(2017,1,17)).each do |v|
      assert_nil(v.period)
      block_call_count += 1
    end

    assert_equal(2, block_call_count)
  end

  def test_step_non_default_block
    ldt = localized_datetime(2017,1,15,23,0,1,TimezoneOffset.new(0, 0, :TEST))
    block_call_count = 0

    result = ldt.step(Date.new(2017,1,14), -2) do |v|
      assert_nil(v.period)
      block_call_count += 1
    end

    assert_same(ldt, result)
    assert_equal(1, block_call_count)
  end

  def test_step_non_default_enumerator
    ldt = localized_datetime(2017,1,15,23,0,1,TimezoneOffset.new(0, 0, :TEST))
    block_call_count = 0

    ldt.step(Date.new(2017,1,14), -2).each do |v|
      assert_nil(v.period)
      block_call_count += 1
    end

    assert_equal(1, block_call_count)
  end

  def test_succ
    ldt = localized_datetime(2017,1,15,23,0,1,TimezoneOffset.new(0, 0, :TEST))
    assert_nil(ldt.succ.period)
  end

  def test_upto_block
    ldt = localized_datetime(2017,1,15,23,0,1,TimezoneOffset.new(0, 0, :TEST))
    block_call_count = 0

    result = ldt.upto(Date.new(2017,1,17)) do |v|
      assert_nil(v.period)
      block_call_count += 1
    end

    assert_same(ldt, result)
    assert_equal(2, block_call_count)
  end

  def test_upto_enumerator
    ldt = localized_datetime(2017,1,15,23,0,1,TimezoneOffset.new(0, 0, :TEST))
    block_call_count = 0

    ldt.upto(Date.new(2017,1,17)).each do |v|
      assert_nil(v.period)
      block_call_count += 1
    end

    assert_equal(2, block_call_count)
  end

  def test_new_offset
    # new_offset isn't formally documented, but is referenced in a code sample
    # in the description of the DateTime class.
    dt = DateTime.new(2017,1,15,23,0,1)
    ldt = localized_datetime(2017,1,15,23,0,1,TimezoneOffset.new(0, 0, :TEST))

    [0, Rational(1,24), '-01:00'].each do |o|
      result = ldt.new_offset(o)
      assert_equal_with_offset(dt.new_offset(o), result)
      assert_nil(result.period)
    end
  end

  def test_class_jd_returns_local_datetime
    ld = LocalDateTime.jd(Rational(212351324401, 86400))
    assert_kind_of(LocalDateTime, ld)
    assert_nil(ld.period)
    assert_equal(2457769, ld.jd)
    assert_equal(Rational(82801, 86400), ld.day_fraction)
  end

  def test_class_new_returns_local_datetime
    ld = LocalDateTime.new(2017,1,15,23,0,1)
    assert_kind_of(LocalDateTime, ld)
    assert_nil(ld.period)
    assert_equal(2457769, ld.jd)
    assert_equal(Rational(82801, 86400), ld.day_fraction)
  end

  [:_httpdate, :_iso8601, :_jisx0301, :_parse, :_rfc2822, :_rfc3339, :_rfc822,
   :_strptime, :_xmlschema, :civil, :commercial, :gregorian_leap?, :httpdate,
   :iso8601, :jisx0301, :julian_leap?, :leap?, :now, :ordinal, :parse, :rfc2822,
   :rfc3339, :rfc822, :strptime, :today, :valid_civil?, :valid_commercial?,
   :valid_date?, :valid_jd?, :valid_ordinal?, :xmlschema
  ].each do |method|
    define_method("test_class_inherited_#{method}_undefined") do
      assert_raises(NoMethodError) { LocalTimestamp.public_send(method) }
    end
  end
end
