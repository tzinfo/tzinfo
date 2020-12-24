# encoding: UTF-8

module TZInfo
  module Definitions
    module Africa
      module Lagos
        include TimezoneDefinition
        
        timezone 'Africa/Lagos' do |tz|
          tz.offset :o0, 815, 0, :LMT
          tz.offset :o1, 0, 0, :GMT
          tz.offset :o2, 1800, 0, :'+0030'
          tz.offset :o3, 3600, 0, :WAT
          
          tz.transition 1905, 6, :o1, 41766235037, 17280
          tz.transition 1908, 7, :o0, 4836247, 2
          tz.transition 1913, 12, :o2, 41819906717, 17280
          tz.transition 1919, 8, :o3, 116265719, 48
        end
      end
    end
  end
end
