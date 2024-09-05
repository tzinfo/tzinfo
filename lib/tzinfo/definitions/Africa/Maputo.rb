# encoding: UTF-8

module TZInfo
  module Definitions
    module Africa
      module Maputo
        include TimezoneDefinition
        
        timezone 'Africa/Maputo' do |tz|
          tz.offset :o0, 7818, 0, :LMT
          tz.offset :o1, 7200, 0, :CAT
          
          tz.transition 1908, 12, :o1, 34823626697, 14400
        end
      end
    end
  end
end
