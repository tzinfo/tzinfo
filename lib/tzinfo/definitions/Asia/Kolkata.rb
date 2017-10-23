# encoding: UTF-8

module TZInfo
  module Definitions
    module Asia
      module Kolkata
        include TimezoneDefinition
        
        timezone 'Asia/Kolkata' do |tz|
          tz.offset :o0, 21208, 0, :LMT
          tz.offset :o1, 21200, 0, :HMT
          tz.offset :o2, 19270, 0, :MMT
          tz.offset :o3, 19800, 0, :IST
          tz.offset :o4, 19800, 3600, :'+0630'
          
          tz.transition 1854, 6, :o1, 25902690349, 10800
          tz.transition 1869, 12, :o2, 519277663, 216
          tz.transition 1905, 12, :o3, 20884705433, 8640
          tz.transition 1941, 9, :o4, 116652877, 48
          tz.transition 1942, 5, :o3, 116663723, 48
          tz.transition 1942, 8, :o4, 116668957, 48
          tz.transition 1945, 10, :o3, 116723675, 48
        end
      end
    end
  end
end
