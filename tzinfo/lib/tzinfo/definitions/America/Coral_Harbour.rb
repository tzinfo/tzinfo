require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions
    module America
      module Coral_Harbour
        include TimezoneDefinition
        
        timezone 'America/Coral_Harbour' do |tz|
          tz.offset :o0, -19960, 0, :LMT
          tz.offset :o1, -18000, 0, :EST
          tz.offset :o2, -18000, 3600, :EDT
          tz.offset :o3, -18000, 3600, :EWT
          tz.offset :o4, -18000, 3600, :EPT
          
          tz.transition 1884, 1, :o1, 5203821739, 2160
          tz.transition 1918, 4, :o2, 58120747, 24
          tz.transition 1918, 10, :o1, 9687575, 4
          tz.transition 1919, 5, :o2, 58130491, 24
          tz.transition 1919, 11, :o1, 7266791, 3
          tz.transition 1942, 2, :o3, 58329595, 24
          tz.transition 1945, 8, :o4, 58360379, 24
          tz.transition 1945, 9, :o1, 9726915, 4
        end
      end
    end
  end
end
