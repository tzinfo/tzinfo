# encoding: UTF-8
# frozen_string_literal: true

COVERAGE_TYPE = 'zoneinfo'

require_relative 'test_utils'

# Use a zoneinfo directory containing files needed by the tests.
# The symlinks in this directory are set up in test_utils.rb.
TZInfo::DataSource.set(:zoneinfo, File.join(File.expand_path(File.dirname(__FILE__)), 'zoneinfo').untaint)

require_relative 'ts_all'
