# encoding: UTF-8

module TZInfo
  module Definitions
    module Pacific
      module Niue
        include TimezoneDefinition
        
        timezone 'Pacific/Niue' do |tz|
          tz.offset :o0, -40780, 0, :LMT
          tz.offset :o1, -40800, 0, :'-1120'
          tz.offset :o2, -39600, 0, :'-11'
          
          tz.transition 1952, 10, :o1, 10516184519, 4320
          tz.transition 1964, 7, :o2, 87788807, 36
        end
      end
    end
  end
end
