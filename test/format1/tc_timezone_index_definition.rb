# frozen_string_literal: true

require File.join(File.expand_path(File.dirname(__FILE__)), '..', 'test_utils')

include TZInfo

module Format1
  class TCTimezoneIndexDefinition < Minitest::Test
    def test_mixed
      m = Module.new
      m.send(:include, TimezoneIndexDefinition)

      m.send(:timezone, 'Test/One')
      m.send(:timezone, 'Test/Two')
      m.send(:linked_timezone, 'Test/Three')
      m.send(:timezone, 'Another/Zone')
      m.send(:linked_timezone, 'And/Yet/Another')

      data_timezones = m.data_timezones
      assert_equal(['Another/Zone', 'Test/One', 'Test/Two'], data_timezones)
      assert(data_timezones.frozen?)
      assert(data_timezones.all?(&:frozen?))
      assert_same(data_timezones, m.data_timezones)

      linked_timezones = m.linked_timezones
      assert_equal(['And/Yet/Another', 'Test/Three'], linked_timezones)
      assert(linked_timezones.frozen?)
      assert(linked_timezones.all?(&:frozen?))
      assert_same(linked_timezones, m.linked_timezones)
    end

    def test_data_only
      m = Module.new
      m.send(:include, TimezoneIndexDefinition)

      m.send(:timezone, 'Test/A/One')
      m.send(:timezone, 'Test/A/Two')
      m.send(:timezone, 'Test/A/Three')

      data_timezones = m.data_timezones
      assert_equal(['Test/A/One', 'Test/A/Three', 'Test/A/Two'], data_timezones)
      assert(data_timezones.frozen?)
      assert(data_timezones.all?(&:frozen?))
      assert_same(data_timezones, m.data_timezones)

      linked_timezones = m.linked_timezones
      assert_equal([], linked_timezones)
      assert(linked_timezones.frozen?)
      assert_same(linked_timezones, m.linked_timezones)
    end

    def test_linked_only
      m = Module.new
      m.send(:include, TimezoneIndexDefinition)

      m.send(:linked_timezone, 'Test/B/One')
      m.send(:linked_timezone, 'Test/B/Two')
      m.send(:linked_timezone, 'Test/B/Three')

      data_timezones = m.data_timezones
      assert_equal([], data_timezones)
      assert(data_timezones.frozen?)
      assert_same(data_timezones, m.data_timezones)

      linked_timezones = m.linked_timezones
      assert_equal(['Test/B/One', 'Test/B/Three', 'Test/B/Two'], linked_timezones)
      assert(linked_timezones.frozen?)
      assert(linked_timezones.all?(&:frozen?))
      assert_same(linked_timezones, m.linked_timezones)
    end

    def test_none
      m = Module.new
      m.send(:include, TimezoneIndexDefinition)

      data_timezones = m.data_timezones
      assert_equal([], data_timezones)
      assert(data_timezones.frozen?)
      assert_same(data_timezones, m.data_timezones)

      linked_timezones = m.linked_timezones
      assert_equal([], linked_timezones)
      assert(linked_timezones.frozen?)
      assert_same(linked_timezones, m.linked_timezones)
    end

    def test_tzinfo_module_alias
      assert_same(TimezoneIndexDefinition, TimezoneIndexDefinition)
    end
  end
end
