require File.join(File.expand_path(File.dirname(__FILE__)), 'test_utils')

include TZInfo

class TCTimezoneUTC < Minitest::Test
  def test_2004
    tz = Timezone.get('UTC')

    time_types_test do |h|
      assert_equal_with_offset(h.time(2004, 1, 1, 0, 0, 0,0,0), tz.to_local(h.time(2004, 1, 1, 0, 0, 0,0,0)))
      assert_equal_with_offset(h.time(2004,12,31,23,59,59,0,0), tz.to_local(h.time(2004,12,31,23,59,59,0,0)))

      assert_equal_with_offset(h.time(2004, 1, 1, 0, 0, 0,0,0), tz.utc_to_local(h.time(2004, 1, 1, 0, 0, 0)))
      assert_equal_with_offset(h.time(2004,12,31,23,59,59,0,0), tz.utc_to_local(h.time(2004,12,31,23,59,59)))

      assert_equal_with_offset(h.time(2004, 1, 1, 0, 0, 0,0,:utc), tz.local_to_utc(h.time(2004, 1, 1, 0, 0, 0)))
      assert_equal_with_offset(h.time(2004,12,31,23,59,59,0,:utc), tz.local_to_utc(h.time(2004,12,31,23,59,59)))

      assert_equal(:UTC, tz.period_for(h.time(2004, 1, 1, 0, 0, 0,0,0)).zone_identifier)
      assert_equal(:UTC, tz.period_for(h.time(2004,12,31,23,59,59,0,0)).zone_identifier)

      assert_equal(:UTC, tz.period_for_utc(h.time(2004, 1, 1, 0, 0, 0)).zone_identifier)
      assert_equal(:UTC, tz.period_for_utc(h.time(2004,12,31,23,59,59)).zone_identifier)

      assert_equal(:UTC, tz.period_for_local(h.time(2004, 1, 1, 0, 0, 0)).zone_identifier)
      assert_equal(:UTC, tz.period_for_local(h.time(2004,12,31,23,59,59)).zone_identifier)

      assert_equal(0, tz.period_for(h.time(2004, 1, 1, 0, 0, 0,0,0)).utc_total_offset)
      assert_equal(0, tz.period_for(h.time(2004,12,31,23,59,59,0,0)).utc_total_offset)

      assert_equal(0, tz.period_for_utc(h.time(2004, 1, 1, 0, 0, 0)).utc_total_offset)
      assert_equal(0, tz.period_for_utc(h.time(2004,12,31,23,59,59)).utc_total_offset)

      assert_equal(0, tz.period_for_local(h.time(2004, 1, 1, 0, 0, 0)).utc_total_offset)
      assert_equal(0, tz.period_for_local(h.time(2004,12,31,23,59,59)).utc_total_offset)

      transitions = tz.transitions_up_to(h.time(2005,1,1,0,0,0,0,0), h.time(2004,1,1,0,0,0,0,0))
      assert_equal(0, transitions.length)

      offsets = tz.offsets_up_to(h.time(2005,1,1,0,0,0,0,0), h.time(2004,1,1,0,0,0,0,0))
      assert_equal([TimezoneOffset.new(0, 0, :UTC)], offsets)
    end
  end
end
