require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Etc #:nodoc:
      module GMT__m__1 #:nodoc:
        include TimezoneDefinition
        
        timezone 'Etc/GMT-1' do |tz|
          tz.offset :o0, 3600, 0, :'GMT-1'
          
        end
      end
    end
  end
end
