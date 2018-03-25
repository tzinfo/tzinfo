# encoding: UTF-8

module TZInfo
  module Definitions
    module Africa
      module Bissau
        include TimezoneDefinition
        
        timezone 'Africa/Bissau' do |tz|
          tz.offset :o0, -3740, 0, :LMT
          tz.offset :o1, -3600, 0, :'-01'
          tz.offset :o2, 0, 0, :GMT
          
          tz.transition 1912, 1, :o1, 58065661, 24
          tz.transition 1975, 1, :o2, 157770000
        end
      end
    end
  end
end
