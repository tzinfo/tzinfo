require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Etc #:nodoc:
      module GMT__m__6 #:nodoc:
        include TimezoneDefinition
        
        timezone 'Etc/GMT-6' do |tz|
          tz.offset :o0, 21600, 0, :'GMT-6'
          
        end
      end
    end
  end
end
