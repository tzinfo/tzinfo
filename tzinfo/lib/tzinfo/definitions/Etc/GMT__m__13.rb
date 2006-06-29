require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Etc #:nodoc:
      module GMT__m__13 #:nodoc:
        include TimezoneDefinition
        
        timezone 'Etc/GMT-13' do |tz|
          tz.offset :o0, 46800, 0, :'GMT-13'
          
        end
      end
    end
  end
end
