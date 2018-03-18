# frozen_string_literal: true

require File.join(File.expand_path(File.dirname(__FILE__)), 'test_utils')

include TZInfo

class TCLocalized < Minitest::Test
  class TestBaseClass
    attr_reader :format
    attr_accessor :strftime_result

    def strftime(format)
      @format = format
      @strftime_result
    end
  end

  class TestClass < TestBaseClass
    include Localized

    attr_accessor :period

    def if_period_test(value)
      if_period(value) {|p,v| yield(p, v) }
    end
  end

  def strftime_test(expected_super_format, format, abbreviation)
    t = TestClass.new
    t.period = abbreviation ? OffsetTimezonePeriod.new(TimezoneOffset.new(0, 0, abbreviation)) : nil
    expected_result = 'super_result'
    t.strftime_result = expected_result
    assert_same(expected_result, t.strftime(format))
    assert_equal(expected_super_format, t.format)
  end

  def test_strftime
    strftime_test('%H:%M:%S BST', '%H:%M:%S %Z', :BST)
    strftime_test('BST', '%Z', :BST)
    strftime_test('%%ZBST', '%%Z%Z', :BST)
    strftime_test('BST BST', '%Z %Z', :BST)
    strftime_test('BST %%Z %%BST %%%%Z %%%%BST', '%Z %%Z %%%Z %%%%Z %%%%%Z', :BST)
  end

  def test_strftime_handles_percent_in_abbreviation
    strftime_test('%%H:%%M:%%S', '%Z', :'%H:%M:%S')
  end

  def test_strftime_nil_period
    strftime_test('%Z', '%Z', nil)
  end

  def test_strftime_nil_format
    t = TestClass.new
    t.period = OffsetTimezonePeriod.new(TimezoneOffset.new(0, 0, 'BST'))
    error = assert_raises(ArgumentError) { t.strftime(nil) }
    assert_match(/\bformat\b/, error.message)
  end

  def test_if_period
    p = OffsetTimezonePeriod.new(TimezoneOffset.new(0, 0, 'BST'))
    t = TestClass.new
    t.period = p
    v = Object.new
    r = Object.new

    block_called = 0

    result = t.if_period_test(v) do |bp,bv|
      block_called += 1
      assert_same(p, bp)
      assert_same(v, bv)
      r
    end

    assert_same(r, result)
    assert_equal(1, block_called)
  end

  def test_if_period_nil_period
    t = TestClass.new
    v = Object.new

    result = t.if_period_test(v) {|bp,bv| raise 'block called unexpectedly' }
    assert_same(result, v)
  end
end
