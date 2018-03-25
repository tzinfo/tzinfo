# encoding: UTF-8

module TZInfo
  module Definitions
    module Africa
      module Sao_Tome
        include TimezoneDefinition
        
        timezone 'Africa/Sao_Tome' do |tz|
          tz.offset :o0, 1616, 0, :LMT
          tz.offset :o1, -2205, 0, :LMT
          tz.offset :o2, 0, 0, :GMT
          tz.offset :o3, 3600, 0, :WAT
          
          tz.transition 1883, 12, :o1, 13009552999, 5400
          tz.transition 1912, 1, :o2, 4838805, 2
          tz.transition 2018, 1, :o3, 1514768400
        end
      end
    end
  end
end
