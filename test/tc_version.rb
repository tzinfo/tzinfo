# frozen_string_literal: true

require File.join(File.expand_path(File.dirname(__FILE__)), 'test_utils')

class TCVersion < Minitest::Test
  def test_version
    assert(TZInfo::VERSION =~ /\A\d+(\.\d+){2}(\.[a-z]+\d*)?\z/)
  end
end
