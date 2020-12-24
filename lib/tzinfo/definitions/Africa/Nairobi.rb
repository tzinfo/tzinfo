# encoding: UTF-8

module TZInfo
  module Definitions
    module Africa
      module Nairobi
        include TimezoneDefinition
        
        timezone 'Africa/Nairobi' do |tz|
          tz.offset :o0, 8836, 0, :LMT
          tz.offset :o1, 9000, 0, :'+0230'
          tz.offset :o2, 10800, 0, :EAT
          tz.offset :o3, 9900, 0, :'+0245'
          
          tz.transition 1908, 4, :o1, 52230147791, 21600
          tz.transition 1928, 6, :o2, 116420563, 48
          tz.transition 1930, 1, :o1, 19407851, 8
          tz.transition 1936, 12, :o3, 116569651, 48
          tz.transition 1942, 7, :o2, 233334949, 96
        end
      end
    end
  end
end
