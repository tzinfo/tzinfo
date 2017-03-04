require File.join(File.expand_path(File.dirname(__FILE__)), 'test_utils')

include TZInfo

class TCTimezoneIndexDefinition < Minitest::Test

  module TimezonesTest1
    include TimezoneIndexDefinition

    timezone 'Test/One'
    timezone 'Test/Two'
    linked_timezone 'Test/Three'
    timezone 'Another/Zone'
    linked_timezone 'And/Yet/Another'
  end

  module TimezonesTest2
    include TimezoneIndexDefinition

    timezone 'Test/A/One'
    timezone 'Test/A/Two'
    timezone 'Test/A/Three'
  end

  module TimezonesTest3
    include TimezoneIndexDefinition

    linked_timezone 'Test/B/One'
    linked_timezone 'Test/B/Two'
    linked_timezone 'Test/B/Three'
  end

  module TimezonesTest4
    include TimezoneIndexDefinition

  end

  def test_timezones
    timezones1 = TimezonesTest1.timezones
    timezones2 = TimezonesTest2.timezones
    timezones3 = TimezonesTest3.timezones
    timezones4 = TimezonesTest4.timezones

    assert_equal(['And/Yet/Another', 'Another/Zone', 'Test/One', 'Test/Three', 'Test/Two'], timezones1)
    assert_equal(['Test/A/One', 'Test/A/Three', 'Test/A/Two'], timezones2)
    assert_equal(['Test/B/One', 'Test/B/Three', 'Test/B/Two'], timezones3)
    assert_equal([], timezones4)

    assert(timezones1.frozen?)
    assert(timezones2.frozen?)
    assert(timezones3.frozen?)
    assert(timezones4.frozen?)

    assert(timezones1.all?(&:frozen?))
    assert(timezones2.all?(&:frozen?))
    assert(timezones3.all?(&:frozen?))
    assert(timezones4.all?(&:frozen?))

    assert_same(timezones1, TimezonesTest1.timezones)
    assert_same(timezones2, TimezonesTest2.timezones)
    assert_same(timezones3, TimezonesTest3.timezones)
    assert_same(timezones4, TimezonesTest4.timezones)
  end

  def test_data_timezones
    data_timezones1 = TimezonesTest1.data_timezones
    data_timezones2 = TimezonesTest2.data_timezones
    data_timezones3 = TimezonesTest3.data_timezones
    data_timezones4 = TimezonesTest4.data_timezones

    assert_equal(['Another/Zone', 'Test/One', 'Test/Two'], data_timezones1)
    assert_equal(['Test/A/One', 'Test/A/Three', 'Test/A/Two'], data_timezones2)
    assert_equal([], data_timezones3)
    assert_equal([], data_timezones4)

    assert(data_timezones1.frozen?)
    assert(data_timezones2.frozen?)
    assert(data_timezones3.frozen?)
    assert(data_timezones4.frozen?)

    assert(data_timezones1.all?(&:frozen?))
    assert(data_timezones2.all?(&:frozen?))
    assert(data_timezones3.all?(&:frozen?))
    assert(data_timezones4.all?(&:frozen?))

    assert_same(data_timezones1, TimezonesTest1.data_timezones)
    assert_same(data_timezones2, TimezonesTest2.data_timezones)
    assert_same(data_timezones3, TimezonesTest3.data_timezones)
    assert_same(data_timezones4, TimezonesTest4.data_timezones)
  end

  def test_linked_timezones
    linked_timezones1 = TimezonesTest1.linked_timezones
    linked_timezones2 = TimezonesTest2.linked_timezones
    linked_timezones3 = TimezonesTest3.linked_timezones
    linked_timezones4 = TimezonesTest4.linked_timezones

    assert_equal(['And/Yet/Another', 'Test/Three'], linked_timezones1)
    assert_equal([], linked_timezones2)
    assert_equal(['Test/B/One', 'Test/B/Three', 'Test/B/Two'], linked_timezones3)
    assert_equal([], linked_timezones4)

    assert(linked_timezones1.frozen?)
    assert(linked_timezones2.frozen?)
    assert(linked_timezones3.frozen?)
    assert(linked_timezones4.frozen?)

    assert(linked_timezones1.all?(&:frozen?))
    assert(linked_timezones2.all?(&:frozen?))
    assert(linked_timezones3.all?(&:frozen?))
    assert(linked_timezones4.all?(&:frozen?))

    assert_same(linked_timezones1, TimezonesTest1.linked_timezones)
    assert_same(linked_timezones2, TimezonesTest2.linked_timezones)
    assert_same(linked_timezones3, TimezonesTest3.linked_timezones)
    assert_same(linked_timezones4, TimezonesTest4.linked_timezones)
  end
end
