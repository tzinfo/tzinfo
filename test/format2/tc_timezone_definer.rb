# frozen_string_literal: true

require File.join(File.expand_path(File.dirname(__FILE__)), '..', 'test_utils')

include TZInfo

module Format2
  class TCTimezoneDefiner < Minitest::Test
    def test_no_offsets_or_transitions
      d = TimezoneDefiner.new
      assert_nil(d.first_offset)
      assert_equal([], d.transitions)
    end

    def test_single_offset_no_transitions
      d = TimezoneDefiner.new
      d.offset :o1, -17900, 0, 'TESTLMT'

      o1 = TimezoneOffset.new(-17900, 0, 'TESTLMT')

      assert_equal(o1, d.first_offset)
      assert_equal([], d.transitions)
    end

    def test_single_offset_single_transition
      d = TimezoneDefiner.new
      d.offset :o1, -17900, 0, 'TESTLMT'
      d.transition :o1, 1456790400

      o1 = TimezoneOffset.new(-17900, 0, 'TESTLMT')
      t1 = TimezoneTransition.new(o1, o1, 1456790400)

      assert_equal(o1, d.first_offset)
      assert_equal([t1], d.transitions)
    end

    def test_multiple_offsets_single_transition
      d = TimezoneDefiner.new
      d.offset :o1, -17900,    0, 'TESTLMT'
      d.offset :o2, -18000, 3600, 'TEST'
      d.transition :o2, 1456790400

      o1 = TimezoneOffset.new(-17900,    0, 'TESTLMT')
      o2 = TimezoneOffset.new(-18000, 3600, 'TEST')
      t1 = TimezoneTransition.new(o2, o1, 1456790400)

      assert_equal(o1, d.first_offset)
      assert_equal([t1], d.transitions)
    end

    def test_multiple_offsets_multiple_transitions
      d = TimezoneDefiner.new
      d.offset :o1, -17900,    0, 'TESTLMT'
      d.offset :o2, -18000, 3600, 'TEST'
      d.offset :o3, -18000,    0, 'TESTD'
      d.transition :o2, 1456790400
      d.transition :o3, 1472688000
      d.transition :o2, 1488326400

      o1 = TimezoneOffset.new(-17900,    0, 'TESTLMT')
      o2 = TimezoneOffset.new(-18000, 3600, 'TEST')
      o3 = TimezoneOffset.new(-18000,    0, 'TESTD')
      t1 = TimezoneTransition.new(o2, o1, 1456790400)
      t2 = TimezoneTransition.new(o3, o2, 1472688000)
      t3 = TimezoneTransition.new(o2, o3, 1488326400)

      assert_equal(o1, d.first_offset)
      assert_equal([t1,t2,t3], d.transitions)
    end

    def test_offset_already_defined
      d = TimezoneDefiner.new
      d.offset :o1, -17900, 0, 'TESTLMT'
      d.offset :o2,  18000, 0, 'TEST'

      error = assert_raises(ArgumentError) { d.offset :o2, 1800, 3600, :TESTD }
      assert_match(/\bid\b/, error.message)
    end

    def test_transition_with_no_offsets
      d = TimezoneDefiner.new

      error = assert_raises(ArgumentError) { d.transition :o1, 1456790400 }
      assert_match(/\boffset_id\b/, error.message)
    end

    def test_transition_with_undefined_offset
      d = TimezoneDefiner.new
      d.offset :o1, -17900, 0, 'TESTLMT'

      d.transition :o1, 1456790400

      error = assert_raises(ArgumentError) { d.transition :o2, 1472688000 }
      assert_match(/\boffset_id\b/, error.message)
    end

    def test_transition_not_increased
      d = TimezoneDefiner.new
      d.offset :o1, -17900, 0, 'TESTLMT'

      d.transition :o1, 1456790400

      error = assert_raises(ArgumentError) { d.transition :o1, 1456790400 }
      assert_match(/\btimestamp\b/, error.message)
    end

    def test_transition_decreased
      d = TimezoneDefiner.new
      d.offset :o1, -17900, 0, 'TESTLMT'

      d.transition :o1, 1456790400

      error = assert_raises(ArgumentError) { d.transition :o1, 1456790399 }
      assert_match(/\btimestamp\b/, error.message)
    end

    def test_same_abbreviation_instance_returned
      d = TimezoneDefiner.new
      abbrev = 'TESTLMT'
      d.offset :o1, 3600, 0, abbrev

      assert_same(abbrev, d.first_offset.abbreviation)
    end

    def test_subsequent_rules
      # subsequent_rules is just a placeholder for forward compatibility,
      # accepting an arbitrary number of arguments and ignoring them.
      0.upto(5) do |n|
        assert_nil(TimezoneDefiner.new.subsequent_rules(*(0..n).to_a))
      end
    end
  end
end
