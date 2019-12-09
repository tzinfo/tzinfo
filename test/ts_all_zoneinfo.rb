# encoding: UTF-8
# frozen_string_literal: true

COVERAGE_TYPE = 'zoneinfo'

require_relative 'test_utils'

# Use a zoneinfo directory containing files needed by the tests.
# The symlinks in this directory are set up in test_utils.rb.
zoneinfo_path = File.join(File.expand_path(File.dirname(__FILE__)), 'zoneinfo')
zoneinfo_path.untaint if RUBY_VERSION < '2.7'
TZInfo::DataSource.set(:zoneinfo, zoneinfo_path)

require_relative 'ts_all'
