# frozen_string_literal: true

require File.join(File.expand_path(File.dirname(__FILE__)), 'test_utils')

include TZInfo

class TCTimezonePeriod < Minitest::Test
  class TestTimezonePeriod < TimezonePeriod
    attr_reader :start_transition
    attr_reader :end_transition

    def initialize(start_transition, end_transition, offset)
      super(offset)
      @start_transition = start_transition
      @end_transition = end_transition
    end
  end

  def test_initialize
    offset = TimezoneOffset.new(-7200, 3600, :SPECIAL)
    p = TimezonePeriod.new(offset)
    assert_same(offset, p.offset)
  end

  def test_initialize_nil
    error = assert_raises(ArgumentError) { TimezonePeriod.new(nil) }
    assert_match(/\boffset\b/, error.message)
  end

  def test_start_transition
    p = TimezonePeriod.new(TimezoneOffset.new(-7200, 3600, :SPECIAL))
    error = assert_raises(NotImplementedError) { p.start_transition }
    assert_match(/\bstart_transition\b/, error.message)
  end

  def test_end_transition
    p = TimezonePeriod.new(TimezoneOffset.new(-7200, 3600, :SPECIAL))
    error = assert_raises(NotImplementedError) { p.end_transition }
    assert_match(/\bend_transition\b/, error.message)
  end

  def test_utc_offset
    p = TimezonePeriod.new(TimezoneOffset.new(-14400, 3600, :TEST))
    assert_equal(-14400, p.utc_offset)
  end

  def test_std_offset
    p = TimezonePeriod.new(TimezoneOffset.new(-14400, 3600, :TEST))
    assert_equal(3600, p.std_offset)
  end

  def test_abbreviation
    p = TimezonePeriod.new(TimezoneOffset.new(-14400, 3600, :TEST))
    assert_equal(:TEST, p.abbreviation)
  end

  def test_zone_identifier
    p = TimezonePeriod.new(TimezoneOffset.new(-14400, 3600, :TEST))
    assert_equal(:TEST, p.zone_identifier)
  end

  def test_utc_total_offset
    p = TimezonePeriod.new(TimezoneOffset.new(-14400, 3600, :TEST))
    assert_equal(-10800, p.utc_total_offset)
  end

  def test_dst
    p1 = TimezonePeriod.new(TimezoneOffset.new(-14400, 3600, :TEST))
    p2 = TimezonePeriod.new(TimezoneOffset.new(-14400, 0, :TEST))

    assert_equal(true, p1.dst?)
    assert_equal(false, p2.dst?)
  end

  def test_starts_at_bounded
    std = TimezoneOffset.new(-7200,    0, :TEST)
    dst = TimezoneOffset.new(-7200, 3600, :TEST)
    p = TestTimezonePeriod.new(TimezoneTransition.new(dst, std, 1136073600), nil, dst)

    assert_equal_with_offset_and_class(Timestamp.utc(1136073600), p.starts_at)
  end

  def test_starts_at_unbounded
    dst = TimezoneOffset.new(-7200, 3600, :TEST)
    p = TestTimezonePeriod.new(nil, nil, dst)

    assert_nil(p.starts_at)
  end

  def test_ends_at_bounded
    std = TimezoneOffset.new(-7200,    0, :TEST)
    dst = TimezoneOffset.new(-7200, 3600, :TEST)
    p = TestTimezonePeriod.new(nil, TimezoneTransition.new(std, dst, 1136160000), dst)

    assert_equal_with_offset_and_class(Timestamp.utc(1136160000), p.ends_at)
  end

  def test_ends_at_unbounded
    dst = TimezoneOffset.new(-7200, 3600, :TEST)
    p = TestTimezonePeriod.new(nil, nil, dst)

    assert_nil(p.ends_at)
  end

  def test_local_starts_at_bounded
    std = TimezoneOffset.new(-7200,    0, :TEST)
    dst = TimezoneOffset.new(-7200, 3600, :TEST)
    p = TestTimezonePeriod.new(TimezoneTransition.new(dst, std, 1136073600), nil, dst)

    assert_equal_with_offset_and_period(LocalTimestamp.new(1136073600, 0, -3600).localize(p), p.local_starts_at)
  end

  def test_local_starts_at_unbounded
    dst = TimezoneOffset.new(-7200, 3600, :TEST)
    p = TestTimezonePeriod.new(nil, nil, dst)

    assert_nil(p.local_starts_at)
  end

  def test_local_ends_at_bounded
    std = TimezoneOffset.new(-7200,    0, :TEST)
    dst = TimezoneOffset.new(-7200, 3600, :TEST)
    p = TestTimezonePeriod.new(nil, TimezoneTransition.new(std, dst, 1136160000), dst)

    assert_equal_with_offset_and_class(LocalTimestamp.new(1136160000, 0, -3600).localize(p), p.local_ends_at)
  end

  def test_local_ends_at_unbounded
    dst = TimezoneOffset.new(-7200, 3600, :TEST)
    p = TestTimezonePeriod.new(nil, nil, dst)

    assert_nil(p.local_ends_at)
  end
end
