# encoding: UTF-8

module TZInfo
  module Definitions
    module Australia
      module Darwin
        include TimezoneDefinition
        
        timezone 'Australia/Darwin' do |tz|
          tz.offset :o0, 31400, 0, :LMT
          tz.offset :o1, 32400, 0, :ACST
          tz.offset :o2, 34200, 0, :ACST
          tz.offset :o3, 34200, 3600, :ACDT
          
          tz.transition 1895, 1, :o1, 1042513259, 432
          tz.transition 1899, 4, :o2, 19318201, 8
          tz.transition 1916, 12, :o3, 38739667, 16
          tz.transition 1917, 3, :o2, 38740995, 16
          tz.transition 1941, 12, :o3, 38885763, 16
          tz.transition 1942, 3, :o2, 38887155, 16
          tz.transition 1942, 9, :o3, 38890067, 16
          tz.transition 1943, 3, :o2, 38892979, 16
          tz.transition 1943, 10, :o3, 38896003, 16
          tz.transition 1944, 3, :o2, 38898803, 16
        end
      end
    end
  end
end
