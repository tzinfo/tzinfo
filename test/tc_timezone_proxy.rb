# encoding: UTF-8
# frozen_string_literal: true

require_relative 'test_utils'

class TCTimezoneProxy < Minitest::Test
  include TZInfo

  def assert_raises_invalid_timezone_identifier(identifier)
    error = assert_raises(InvalidTimezoneIdentifier) { yield }
    assert_match(Regexp.new('\b' + Regexp.escape(identifier) + '\b'), error.message)
  end

  def test_non_existent_identifier_is_reported_when_used
    identifier = 'Nothing/Special'
    proxy = TimezoneProxy.new(identifier)
    t = Time.utc(2006,1,1,0,0,0)
    assert_equal(identifier, proxy.identifier)
    assert_raises_invalid_timezone_identifier(identifier) { proxy.period_for(t) }
    assert_raises_invalid_timezone_identifier(identifier) { proxy.periods_for_local(t) }
    assert_raises_invalid_timezone_identifier(identifier) { proxy.transitions_up_to(t) }
    assert_raises_invalid_timezone_identifier(identifier) { proxy.canonical_zone }
  end

  def test_identifier_returns_same_identifier_before_real_timezone_is_obtained
    identifier = 'Europe/London'.dup
    proxy = TimezoneProxy.new(identifier)
    assert_same(identifier, proxy.identifier)
  end

  def test_identifier_returns_real_identifier_after_real_timezone_is_obtained
    identifier = 'Europe/London'.dup
    proxy = TimezoneProxy.new(identifier)
    real = Timezone.get(identifier)

    # Force the real time zone to be obtained.
    proxy.canonical_zone

    proxy_identifier = proxy.identifier
    refute_same(identifier, proxy_identifier)
    assert_equal(identifier, proxy_identifier)
    assert_same(real.identifier, proxy_identifier)
  end

  def test_period_for
    identifier = 'Europe/London'
    proxy = TimezoneProxy.new(identifier)
    real = Timezone.get(identifier)

    time_types_test do |h|
      time = h.time(2026,3,29,0,30,0,0,0)
      proxy_result = proxy.period_for(time)
      real_result = real.period_for(time)
      assert_equal(real_result, proxy_result)
      assert_equal(0, proxy_result.std_offset)
    end

    time_types_test(:offset) do |h|
      time = h.time(2026,3,29,1,30,0,0,3600)
      proxy_result = proxy.period_for(time)
      real_result = real.period_for(time)
      assert_equal(real_result, proxy_result)
      assert_equal(0, proxy_result.std_offset)
    end
  end

  def test_periods_for_local
    identifier = 'Australia/Melbourne'
    proxy = TimezoneProxy.new(identifier)
    real = Timezone.get(identifier)

    time_types_test do |h|
      time = h.time(2026,4,5,2,30,0,0,0)
      proxy_result = proxy.periods_for_local(time)
      real_result = real.periods_for_local(time)
      assert_equal(real_result, proxy_result)
      assert_equal(2, proxy_result.length)
    end

    time_types_test(:offset) do |h|
      time = h.time(2026,4,5,2,30,0,0,39600)
      proxy_result = proxy.periods_for_local(time)
      real_result = real.periods_for_local(time)
      assert_equal(real_result, proxy_result)
      assert_equal(2, proxy_result.length)
    end
  end

  def test_transitions_up_to
    identifier = 'Europe/London'
    proxy = TimezoneProxy.new(identifier)
    real = Timezone.get(identifier)

    time_types_test do |h|
      time1 = h.time(2026,3,29,1,0,1,0,0)
      proxy_result1 = proxy.transitions_up_to(time1)
      real_result1 = real.transitions_up_to(time1)
      assert_equal(real_result1, proxy_result1)
      expected_timestamp = Timestamp.for(Time.utc(2026,3,29,1,0,0))
      assert(proxy_result1.any? {|t| t.at == expected_timestamp })

      time2 = h.time(2025,1,1,0,0,0,0,0)
      proxy_result2 = proxy.transitions_up_to(time1, time2)
      real_result2 = real.transitions_up_to(time1, time2)
      assert_equal(real_result2, proxy_result2)
      assert(proxy_result2.length < proxy_result1.length)
      assert(proxy_result2.any? {|t| t.at == expected_timestamp })
    end
  end

  def test_canonical_zone
    identifier = 'UTC'
    proxy = TimezoneProxy.new(identifier)
    proxy_canonical_zone = proxy.canonical_zone
    assert_kind_of(DataTimezone, proxy_canonical_zone)

    real = Timezone.get(identifier)

    # ZoneinfoDataSource doesn't return LinkedTimezoneInfo instances for any
    # timezone.
    expected_canonical_zone_identifier = real.kind_of?(LinkedTimezone) ? 'Etc/UTC' : 'UTC'

    assert_equal(Timezone.get(expected_canonical_zone_identifier), proxy_canonical_zone)
    assert_equal(expected_canonical_zone_identifier, proxy_canonical_zone.identifier)
  end

  def test_after_freeze
    proxy = TimezoneProxy.new('Europe/London')
    real = Timezone.get('Europe/London')
    t = Time.utc(2017, 6, 1)
    proxy.freeze
    assert_equal('Europe/London', proxy.identifier)
    assert_equal(real.period_for(t), proxy.period_for(t))
  end

  def test_equals
    assert_equal(true, TimezoneProxy.new('Europe/London') == TimezoneProxy.new('Europe/London'))
    assert_equal(false, TimezoneProxy.new('Europe/London') == TimezoneProxy.new('Europe/Paris'))
    assert(!(TimezoneProxy.new('Europe/London') == Object.new))
  end

  def test_compare
    assert_equal(0, TimezoneProxy.new('Europe/London') <=> TimezoneProxy.new('Europe/London'))
    assert_equal(0, Timezone.get('Europe/London') <=> TimezoneProxy.new('Europe/London'))
    assert_equal(0, TimezoneProxy.new('Europe/London') <=> Timezone.get('Europe/London'))
    assert_equal(-1, TimezoneProxy.new('Europe/London') <=> TimezoneProxy.new('Europe/Paris'))
    assert_equal(-1, Timezone.get('Europe/London') <=> TimezoneProxy.new('Europe/Paris'))
    assert_equal(-1, TimezoneProxy.new('Europe/London') <=> Timezone.get('Europe/Paris'))
    assert_equal(1, TimezoneProxy.new('Europe/Paris') <=> TimezoneProxy.new('Europe/London'))
    assert_equal(1, Timezone.get('Europe/Paris') <=> TimezoneProxy.new('Europe/London'))
    assert_equal(1, TimezoneProxy.new('Europe/Paris') <=> Timezone.get('Europe/London'))
    assert_equal(-1, TimezoneProxy.new('America/New_York') <=> TimezoneProxy.new('Europe/Paris'))
    assert_equal(-1, Timezone.get('America/New_York') <=> TimezoneProxy.new('Europe/Paris'))
    assert_equal(-1, TimezoneProxy.new('America/New_York') <=> Timezone.get('Europe/Paris'))
    assert_equal(1, TimezoneProxy.new('Europe/Paris') <=> TimezoneProxy.new('America/New_York'))
    assert_equal(1, Timezone.get('Europe/Paris') <=> TimezoneProxy.new('America/New_York'))
    assert_equal(1, TimezoneProxy.new('Europe/Paris') <=> Timezone.get('America/New_York'))
  end

  def test_kind
    assert_kind_of(Timezone, TimezoneProxy.new('America/New_York'))
  end

  def test_marshal
    tp = TimezoneProxy.new('Europe/London')
    tp2 = Marshal.load(Marshal.dump(tp))

    assert_kind_of(TimezoneProxy, tp2)
    assert_equal('Europe/London', tp2.identifier)
  end

  def test_inspect
    tp = TimezoneProxy.new('Europe/London')
    assert_equal('#<TZInfo::TimezoneProxy: Europe/London>', tp.inspect)
  end
end
