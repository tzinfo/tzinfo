# encoding: UTF-8

module TZInfo
  module Definitions
    module Pacific
      module Pohnpei
        include TimezoneDefinition
        
        timezone 'Pacific/Pohnpei' do |tz|
          tz.offset :o0, -48428, 0, :LMT
          tz.offset :o1, 37972, 0, :LMT
          tz.offset :o2, 39600, 0, :'+11'
          tz.offset :o3, 32400, 0, :'+09'
          tz.offset :o4, 36000, 0, :'+10'
          
          tz.transition 1844, 12, :o1, 51730532507, 21600
          tz.transition 1900, 12, :o2, 52172317307, 21600
          tz.transition 1914, 9, :o3, 58089745, 24
          tz.transition 1919, 1, :o2, 19375921, 8
          tz.transition 1936, 12, :o4, 58284817, 24
          tz.transition 1941, 3, :o3, 29161021, 12
          tz.transition 1945, 7, :o2, 19453345, 8
        end
      end
    end
  end
end
