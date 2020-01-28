# encoding: UTF-8

# Top level module for TZInfo.
module TZInfo
  # Top level module for TZInfo::Data.
  module Data
    location = File.dirname(File.dirname(__FILE__))

    if location.respond_to?(:untaint) && RUBY_VERSION < '2.7'
      location.untaint
    end

    # The directory containing the TZInfo::Data files.
    LOCATION = location.freeze
  end
end

require_relative 'data/version'
