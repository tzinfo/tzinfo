require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Etc #:nodoc:
      module GMT__m__10 #:nodoc:
        include TimezoneDefinition
        
        timezone 'Etc/GMT-10' do |tz|
          tz.offset :o0, 36000, 0, :'GMT-10'
          
        end
      end
    end
  end
end
