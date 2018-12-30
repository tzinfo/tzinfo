# encoding: UTF-8

module TZInfo
  module Definitions
    module Pacific
      module Palau
        include TimezoneDefinition
        
        timezone 'Pacific/Palau' do |tz|
          tz.offset :o0, -54124, 0, :LMT
          tz.offset :o1, 32276, 0, :LMT
          tz.offset :o2, 32400, 0, :'+09'
          
          tz.transition 1844, 12, :o1, 51730533931, 21600
          tz.transition 1900, 12, :o2, 52172318731, 21600
        end
      end
    end
  end
end
