# encoding: UTF-8

module TZInfo
  module Definitions
    module Pacific
      module Chuuk
        include TimezoneDefinition
        
        timezone 'Pacific/Chuuk' do |tz|
          tz.offset :o0, -49972, 0, :LMT
          tz.offset :o1, 36428, 0, :LMT
          tz.offset :o2, 36000, 0, :'+10'
          tz.offset :o3, 32400, 0, :'+09'
          
          tz.transition 1844, 12, :o1, 51730532893, 21600
          tz.transition 1900, 12, :o2, 52172317693, 21600
          tz.transition 1914, 9, :o3, 29044873, 12
          tz.transition 1919, 1, :o2, 19375921, 8
          tz.transition 1941, 3, :o3, 29161021, 12
          tz.transition 1945, 7, :o2, 19453345, 8
        end
      end
    end
  end
end
