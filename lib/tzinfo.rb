# Top level module for TZInfo.
module TZInfo
end


class TZInfo::ConcurrentMap
  def initialize
    @mutex = Mutex.new
    @h = {}
  end
  def [](k); @mutex.synchronize { @h[k] }; end
  def []=(k, v); @mutex.synchronize { @h[k] = v } ; end
end


require 'tzinfo/version'

require 'tzinfo/offset_rationals'
require 'tzinfo/timestamp'

require 'tzinfo/timezone_definition'

require 'tzinfo/timezone_offset'
require 'tzinfo/timezone_transition'

require 'tzinfo/timezone_index_definition'

require 'tzinfo/timezone_info'
require 'tzinfo/data_timezone_info'
require 'tzinfo/linked_timezone_info'
require 'tzinfo/transition_data_timezone_info'
require 'tzinfo/zoneinfo_timezone_info'

require 'tzinfo/data_source'
require 'tzinfo/ruby_data_source'
require 'tzinfo/zoneinfo_data_source'

require 'tzinfo/timezone_period'
require 'tzinfo/timezone'
require 'tzinfo/info_timezone'
require 'tzinfo/data_timezone'
require 'tzinfo/linked_timezone'
require 'tzinfo/timezone_proxy'

require 'tzinfo/country_index_definition'
require 'tzinfo/country_info'
require 'tzinfo/ruby_country_info'
require 'tzinfo/zoneinfo_country_info'

require 'tzinfo/country'
require 'tzinfo/country_timezone'


