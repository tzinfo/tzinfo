# encoding: UTF-8

module TZInfo
  module Definitions
    module Asia
      module Tokyo
        include TimezoneDefinition
        
        timezone 'Asia/Tokyo' do |tz|
          tz.offset :o0, 33539, 0, :LMT
          tz.offset :o1, 32400, 0, :JST
          tz.offset :o2, 32400, 3600, :JDT
          
          tz.transition 1887, 12, :o1, 19285097, 8
          tz.transition 1948, 5, :o2, 19461385, 8
          tz.transition 1948, 9, :o1, 29193673, 12
          tz.transition 1949, 4, :o2, 19464073, 8
          tz.transition 1949, 9, :o1, 29198041, 12
          tz.transition 1950, 5, :o2, 19467265, 8
          tz.transition 1950, 9, :o1, 29202409, 12
          tz.transition 1951, 5, :o2, 19470177, 8
          tz.transition 1951, 9, :o1, 29206777, 12
        end
      end
    end
  end
end
