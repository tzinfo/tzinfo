# Top level module for TZInfo.
module TZInfo
  # Top level module for TZInfo::Data.
  module Data
    # The directory containing the TZInfo::Data files.
    LOCATION = File.dirname(File.dirname(__FILE__)).untaint.freeze
  end
end

require_relative 'data/version'
