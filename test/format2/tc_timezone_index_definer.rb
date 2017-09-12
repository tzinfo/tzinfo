# frozen_string_literal: true

require File.join(File.expand_path(File.dirname(__FILE__)), '..', 'test_utils')

include TZInfo

module Format2
  class TCTimezoneIndexDefiner < Minitest::Test
    def test_mixed
      d = TimezoneIndexDefiner.new
      d.data_timezone 'Test/One'
      d.data_timezone 'Test/Two'
      d.linked_timezone 'Test/Three'
      d.data_timezone 'Another/Zone'
      d.linked_timezone 'And/Yet/Another'

      assert_array_same_items(['Another/Zone', 'Test/One', 'Test/Two'], d.data_timezones)
      assert_array_same_items(['And/Yet/Another', 'Test/Three'], d.linked_timezones)
      assert(d.data_timezones.all?(&:frozen?))
      assert(d.linked_timezones.all?(&:frozen?))
    end

    def test_data_only
      d = TimezoneIndexDefiner.new
      d.data_timezone 'Test/A/One'
      d.data_timezone 'Test/A/Two'
      d.data_timezone 'Test/A/Three'

      assert_array_same_items(['Test/A/One', 'Test/A/Two', 'Test/A/Three'], d.data_timezones)
      assert_equal([], d.linked_timezones)
      assert(d.data_timezones.all?(&:frozen?))
    end

    def test_linked_only
      d = TimezoneIndexDefiner.new
      d.linked_timezone 'Test/B/One'
      d.linked_timezone 'Test/B/Two'
      d.linked_timezone 'Test/B/Three'

      assert_equal([], d.data_timezones)
      assert_array_same_items(['Test/B/One', 'Test/B/Three', 'Test/B/Two'], d.linked_timezones)
      assert(d.linked_timezones.all?(&:frozen?))
    end

    def test_none
      d = TimezoneIndexDefiner.new

      assert_equal([], d.data_timezones)
      assert_equal([], d.linked_timezones)
    end
  end
end
