require File.join(File.expand_path(File.dirname(__FILE__)), 'test_utils')

include TZInfo

class TCTimezoneDefinition < Minitest::Test
  def test_data_transitions
    m = Module.new
    m.send(:include, TimezoneDefinition)
    block_called = 0

    m.send(:timezone, 'Test/Data/Zone') do |tz|
      block_called += 1
      assert_kind_of(TimezoneDefinerFormat1, tz)
      tz.offset :o0, -75,    0, :LMT
      tz.offset :o1,   0,    0, :GMT
      tz.offset :o2,   0, 3600, :BST
      tz.transition 1847, 12, :o1, -3852662325
      tz.transition 2016,  3, :o2,  1459040400
    end

    assert_equal(1, block_called)

    ti = m.get
    assert_kind_of(TransitionDataTimezoneInfo, ti)
    assert_equal('Test/Data/Zone', ti.identifier)

    o0 = TimezoneOffset.new(-75,    0, :LMT)
    o1 = TimezoneOffset.new(  0,    0, :GMT)
    o2 = TimezoneOffset.new(  0, 3600, :BST)

    t1 = TimezoneTransition.new(o1, o0, -3852662325)
    t2 = TimezoneTransition.new(o2, o1,  1459040400)

    assert_equal([t1, t2], ti.transitions)
  end

  def test_data_constant_offset
    m = Module.new
    m.send(:include, TimezoneDefinition)
    block_called = 0

    m.send(:timezone, 'Test/Data/Zone') do |tz|
      block_called += 1
      assert_kind_of(TimezoneDefinerFormat1, tz)
      tz.offset :o0, -75,    0, :LMT
    end

    assert_equal(1, block_called)

    ti = m.get
    assert_kind_of(TransitionDataTimezoneInfo, ti)
    assert_equal('Test/Data/Zone', ti.identifier)
    assert_equal(TimezoneOffset.new(-75, 0, :LMT), ti.constant_offset)
  end

  def test_linked
    m = Module.new
    m.send(:include, TimezoneDefinition)
    m.send(:linked_timezone, 'Test/Linked/Zone', 'Test/Linked_To/Zone')

    ti = m.get
    assert_kind_of(LinkedTimezoneInfo, ti)
    assert_equal('Test/Linked/Zone', ti.identifier)
    assert_equal('Test/Linked_To/Zone', ti.link_to_identifier)
  end

  def test_double_data
    m = Module.new
    m.send(:include, TimezoneDefinition)
    block_called = 0

    m.send(:timezone, 'Test/Data/Zone') do |tz|
      block_called += 1
      assert_kind_of(TimezoneDefinerFormat1, tz)
      tz.offset :o0, -75, 0, :LMT
      tz.offset :o1,   0, 0, :GMT
      tz.transition 1847, 12, :o1, -3852662325
    end

    assert_equal(1, block_called)

    m.send(:timezone, 'Test/Data/Zone2') do |tz|
      block_called += 1
      assert_kind_of(TimezoneDefinerFormat1, tz)
      tz.offset :o0, 3525, 0, :LMT
      tz.offset :o1, 3600, 0, :CET
      tz.transition 1847, 12, :o1, -3852658875
    end

    assert_equal(2, block_called)

    ti = m.get
    assert_kind_of(TransitionDataTimezoneInfo, ti)
    assert_equal('Test/Data/Zone2', ti.identifier)

    o0 = TimezoneOffset.new(3525, 0, :LMT)
    o1 = TimezoneOffset.new(3600, 0, :CET)

    t1 = TimezoneTransition.new(o1, o0, -3852658875)

    assert_equal([t1], ti.transitions)
  end

  def test_double_linked
    m = Module.new
    m.send(:include, TimezoneDefinition)
    m.send(:linked_timezone, 'Test/Linked/Zone', 'Test/Linked_To/Zone')
    m.send(:linked_timezone, 'Test/Linked/Zone2', 'Test/Linked_To/Zone2')

    ti = m.get
    assert_kind_of(LinkedTimezoneInfo, ti)
    assert_equal('Test/Linked/Zone2', ti.identifier)
    assert_equal('Test/Linked_To/Zone2', ti.link_to_identifier)
  end

  def test_data_linked
    m = Module.new
    m.send(:include, TimezoneDefinition)
    block_called = 0

    m.send(:timezone, 'Test/Data/Zone') do |tz|
      block_called += 1
      assert_kind_of(TimezoneDefinerFormat1, tz)
      tz.offset :o0, -75, 0, :LMT
      tz.offset :o1,   0, 0, :GMT
      tz.transition 1847, 12, :o1, -3852662325
    end

    assert_equal(1, block_called)

    m.send(:linked_timezone, 'Test/Linked/Zone2', 'Test/Linked_To/Zone2')

    ti = m.get
    assert_kind_of(LinkedTimezoneInfo, ti)
    assert_equal('Test/Linked/Zone2', ti.identifier)
    assert_equal('Test/Linked_To/Zone2', ti.link_to_identifier)
  end

  def test_linked_data
    m = Module.new
    m.send(:include, TimezoneDefinition)
    m.send(:linked_timezone, 'Test/Linked/Zone1', 'Test/Linked_To/Zone1')
    block_called = 0

    m.send(:timezone, 'Test/Data/Zone2') do |tz|
      block_called += 1
      assert_kind_of(TimezoneDefinerFormat1, tz)
      tz.offset :o0, -75, 0, :LMT
      tz.offset :o1,   0, 0, :GMT
      tz.transition 1847, 12, :o1, -3852662325
    end

    ti = m.get
    assert_kind_of(TransitionDataTimezoneInfo, ti)
    assert_equal('Test/Data/Zone2', ti.identifier)

    o0 = TimezoneOffset.new(-75, 0, :LMT)
    o1 = TimezoneOffset.new(  0, 0, :GMT)

    t1 = TimezoneTransition.new(o1, o0, -3852662325)

    assert_equal([t1], ti.transitions)
  end
end
