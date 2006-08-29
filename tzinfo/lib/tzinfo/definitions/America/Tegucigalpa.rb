require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions
    module America
      module Tegucigalpa
        include TimezoneDefinition
        
        timezone 'America/Tegucigalpa' do |tz|
          tz.offset :o0, -20932, 0, :LMT
          tz.offset :o1, -21600, 0, :CST
          tz.offset :o2, -21600, 3600, :CDT
          
          tz.transition 1921, 4, :o1, 52332064033, 21600
          tz.transition 1987, 5, :o2, 547020000
          tz.transition 1987, 9, :o1, 559717200
          tz.transition 1988, 5, :o2, 578469600
          tz.transition 1988, 9, :o1, 591166800
          tz.transition 2006, 5, :o2, 1146981600
          tz.transition 2006, 8, :o1, 1154926800
          tz.transition 2007, 5, :o2, 1178431200
          tz.transition 2007, 8, :o1, 1186376400
          tz.transition 2008, 5, :o2, 1209880800
          tz.transition 2008, 8, :o1, 1217826000
          tz.transition 2009, 5, :o2, 1241330400
          tz.transition 2009, 8, :o1, 1249275600
        end
      end
    end
  end
end
