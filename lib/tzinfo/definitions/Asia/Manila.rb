# encoding: UTF-8

module TZInfo
  module Definitions
    module Asia
      module Manila
        include TimezoneDefinition
        
        timezone 'Asia/Manila' do |tz|
          tz.offset :o0, -57368, 0, :LMT
          tz.offset :o1, 29032, 0, :LMT
          tz.offset :o2, 28800, 0, :PST
          tz.offset :o3, 28800, 3600, :PDT
          tz.offset :o4, 32400, 0, :JST
          
          tz.transition 1844, 12, :o1, 25865267371, 10800
          tz.transition 1899, 9, :o2, 7244711, 3
          tz.transition 1936, 10, :o3, 14570839, 6
          tz.transition 1937, 1, :o2, 19428393, 8
          tz.transition 1941, 12, :o3, 14582065, 6
          tz.transition 1942, 2, :o4, 19443217, 8
          tz.transition 1945, 3, :o3, 19452145, 8
          tz.transition 1945, 11, :o2, 19454321, 8
          tz.transition 1954, 4, :o3, 14609065, 6
          tz.transition 1954, 6, :o2, 19479185, 8
          tz.transition 1977, 3, :o3, 228326400
          tz.transition 1977, 9, :o2, 243702000
          tz.transition 1990, 5, :o3, 643219200
          tz.transition 1990, 7, :o2, 649177200
        end
      end
    end
  end
end
