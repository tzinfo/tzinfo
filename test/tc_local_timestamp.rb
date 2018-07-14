# frozen_string_literal: true

require_relative 'test_utils'

include TZInfo

class TCLocalTimestamp < Minitest::Test
  def new_timestamp(year, month, day, hour, minute, second, offset, klass = Timestamp)
    time = Time.new(year, month, day, hour, minute, second, offset == :utc ? 0 : offset)
    klass.new(time.to_i, time.subsec, offset)
  end

  def localized_timestamp(year, month, day, hour, minute, second, tz_offset)
    new_timestamp(year, month, day, hour, minute, second, tz_offset.current_utc_offset, LocalTimestamp).localize(tz_offset)
  end

  def test_class_localize
    o = TimezoneOffset.new(7200, 0, 'TEST')
    [new_timestamp(2017,1,15,23,0,0,nil), new_timestamp(2017,1,15,23,0,0,:utc), new_timestamp(2017,1,15,23,0,0,0), new_timestamp(2017,1,15,23,0,Rational(11,10),0), new_timestamp(2017,1,15,23,0,Rational(11,10),3600)].each do |t|
      lt = LocalTimestamp.localize(t, o)
      assert_kind_of(LocalTimestamp, lt)
      assert_equal(t.value, lt.value)
      assert_equal(t.sub_second, lt.sub_second)
      assert_equal(7200, lt.utc_offset)
      assert_same(o, lt.offset_info)
    end
  end

  def test_class_localize_timestamp_nil
    o = TimezoneOffset.new(7200, 0, 'TEST')
    error = assert_raises(ArgumentError) { LocalTimestamp.localize(nil, o) }
    assert_match(/\btimestamp\b/, error.message)
  end

  def test_class_localize_offset_info_nil
    t = new_timestamp(2017,1,15,23,0,0,0)
    error = assert_raises(ArgumentError) { LocalTimestamp.localize(t, nil) }
    assert_match(/\boffset_info\b/, error.message)
  end

  def test_localize
    [new_timestamp(2017,1,15,23,0,Rational(11,10),0,LocalTimestamp), new_timestamp(2017,1,15,23,0,Rational(11,10),3600,LocalTimestamp)].each do |lt|
      o1 = TimezoneOffset.new(lt.utc_offset, 0, 'TEST')
      o2 = TimezoneOffset.new(0, lt.utc_offset, 'TEST')
      assert_nil(lt.offset_info)
      assert_same(lt, lt.localize(o1))
      assert_same(o1, lt.offset_info)
      assert_same(lt, lt.localize(o2))
      assert_same(o2, lt.offset_info)
    end
  end

  def test_localize_utc
    lt = LocalTimestamp.create(2017,1,15,23,0,1,Rational(1,10),:utc)
    o = TimezoneOffset.new(0, 0, 'TEST')
    error = assert_raises(ArgumentError) { lt.localize(o) }
    assert_match(/\bmatch\b/, error.message)
  end

  def test_localize_unspecified_offset
    lt = LocalTimestamp.create(2017,1,15,23,0,1,Rational(1,10))
    o = TimezoneOffset.new(0, 0, 'TEST')
    error = assert_raises(ArgumentError) { lt.localize(o) }
    assert_match(/\bmatch\b/, error.message)
  end

  def test_localize_offset_mismatch
    lt1 = new_timestamp(2017,1,15,23,0,Rational(11,10),0,LocalTimestamp)
    o1a = TimezoneOffset.new(3600,    0, 'TEST')
    o1b = TimezoneOffset.new(   0, 3600, 'TEST')

    lt2 = new_timestamp(2017,1,15,23,0,Rational(11,10),3600,LocalTimestamp)
    o2a = TimezoneOffset.new(3600, 3600, 'TEST')
    o2b = TimezoneOffset.new(   0,    0, 'TEST')

    [[lt1, [o1a, o1b]], [lt2, [o2a, o2b]]].each do |lt, offsets|
      offsets.each do |o|
        error = assert_raises(ArgumentError) { lt.localize(o) }
        assert_match(/\bmatch\b/, error.message)
      end
    end
  end

  def test_localize_nil_offset_info
    lt = new_timestamp(2017,1,15,23,0,Rational(11,10),0,LocalTimestamp)
    error = assert_raises(ArgumentError) { lt.localize(nil) }
    assert_match(/\boffset_info\b/, error.message)
  end

  def test_strftime
    lt = localized_timestamp(2017,1,15,23,0,1,TimezoneOffset.new(0, 3600, 'TEST'))
    assert_equal('23:00:01 TEST', lt.strftime('%H:%M:%S %Z'))
    assert_equal('TEST', lt.strftime('%Z'))
    assert_equal('%ZTEST', lt.strftime('%%Z%Z'))
    assert_equal('TEST TEST', lt.strftime('%Z %Z'))
    assert_equal('TEST %Z %TEST %%Z %%TEST', lt.strftime('%Z %%Z %%%Z %%%%Z %%%%%Z'))
  end

  def test_strftime_handles_percent_in_abbreviation
    lt = localized_timestamp(2017,1,15,23,0,1,TimezoneOffset.new(0, 0, '%H:%M:%S'))
    assert_equal('%H:%M:%S', lt.strftime('%Z'))
  end

  def test_strftime_nil_offset_info
    t = new_timestamp(2017,1,15,23,0,1,3600)
    lt = new_timestamp(2017,1,15,23,0,1,3600,LocalTimestamp)
    assert_nil(lt.offset_info)

    # JRuby 1.7 returns '+01:00' instead of empty string.
    assert_equal(t.strftime('%Z'), lt.strftime('%Z'))
  end

  def test_strftime_nil_format
    lt = localized_timestamp(2017,1,15,23,0,1,TimezoneOffset.new(0, 3600, 'TEST'))
    error = assert_raises(ArgumentError) { lt.strftime(nil) }
    assert_match(/\bformat\b/, error.message)
  end

  def test_add
    lt = localized_timestamp(2017,1,15,23,0,1,TimezoneOffset.new(0, 3600, 'TEST'))
    assert_equal(Timestamp, (lt + 1).class)
  end

  def test_subtract
    lt = localized_timestamp(2017,1,15,23,0,1,TimezoneOffset.new(0, 3600, 'TEST'))
    assert_equal(Timestamp, (lt - 1).class)
  end

  def test_utc
    lt = localized_timestamp(2017,1,15,23,0,1,TimezoneOffset.new(0, 0, 'TEST'))
    assert_equal(Timestamp, lt.utc.class)
  end

  def test_to_time
    o = TimezoneOffset.new(0, 3600, 'TEST')
    lt = localized_timestamp(2017,1,15,23,0,Rational(11,10),o)
    t = lt.to_time
    assert_kind_of(LocalTime, t)
    assert_same(o, t.offset_info)
    assert_equal_with_offset(Time.new(2017,1,15,23,0,Rational(11,10),3600), t)
  end

  def test_to_time_nil_offset_info
    lt = new_timestamp(2017,1,15,23,0,Rational(11,10),3600,LocalTimestamp)
    assert_nil(lt.offset_info)
    t = lt.to_time
    assert_equal(Time, t.class)
    assert_equal_with_offset(Time.new(2017,1,15,23,0,Rational(11,10),3600), t)
  end

  def test_to_datetime
    o = TimezoneOffset.new(0, 3600, 'TEST')
    lt = localized_timestamp(2017,1,15,23,0,Rational(11,10),o)
    dt = lt.to_datetime
    assert_kind_of(LocalDateTime, dt)
    assert_same(o, dt.offset_info)
    assert_equal_with_offset(DateTime.new(2017,1,15,23,0,Rational(11,10),Rational(1,24)), dt)
  end

  def test_to_datetime_nil_offset_info
    lt = new_timestamp(2017,1,15,23,0,Rational(11,10),3600,LocalTimestamp)
    assert_nil(lt.offset_info)
    dt = lt.to_datetime
    assert_equal(DateTime, dt.class)
    assert_equal_with_offset(DateTime.new(2017,1,15,23,0,Rational(11,10),Rational(1,24)), dt)
  end

  def test_compare
    o = TimezoneOffset.new(0, 0, 'TEST')
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
    assert_equal('#<TZInfo::LocalTimestamp: @value=1476316800, @sub_second=0, @utc_offset=0, @utc=false>', localized_timestamp(2016,10,13,0,0,0,TimezoneOffset.new(0, 0, 'TEST')).inspect)
    assert_equal('#<TZInfo::LocalTimestamp: @value=1476316800, @sub_second=1/10, @utc_offset=3600, @utc=false>', localized_timestamp(2016,10,13,1,0,Rational(1,10),TimezoneOffset.new(3600, 0, 'TEST')).inspect)
    assert_equal('#<TZInfo::LocalTimestamp: @value=1476316800, @sub_second=0, @utc_offset=0, @utc=true>', LocalTimestamp.new(1476316800, Rational(0, 1), :utc).inspect)
  end

  def test_class_create_returns_local_timestamp
    lt = LocalTimestamp.create(2016, 10, 13, 1, 0, 0, 0, 3600)
    assert_kind_of(LocalTimestamp, lt)
    assert_nil(lt.offset_info)
    assert_equal(1476316800, lt.value)
    assert_equal(0, lt.sub_second)
    assert_equal(3600, lt.utc_offset)
  end

  def test_class_new_returns_local_timestamp
    lt = LocalTimestamp.new(1476316800, 0, 3600)
    assert_kind_of(LocalTimestamp, lt)
    assert_nil(lt.offset_info)
    assert_equal(1476316800, lt.value)
    assert_equal(0, lt.sub_second)
    assert_equal(3600, lt.utc_offset)
  end
end
