require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module America #:nodoc:
      module Panama #:nodoc:
        include TimezoneDefinition
        
        timezone 'America/Panama' do |tz|
          tz.offset :o0, -19088, 0, :LMT
          tz.offset :o1, -19176, 0, :CMT
          tz.offset :o2, -18000, 0, :EST
          
          tz.transition 1890, 1, :o1, 13021391093, 5400
          tz.transition 1908, 4, :o2, 8704993399, 3600
        end
      end
    end
  end
end
