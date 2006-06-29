require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Etc #:nodoc:
      module GMT__m__2 #:nodoc:
        include TimezoneDefinition
        
        timezone 'Etc/GMT-2' do |tz|
          tz.offset :o0, 7200, 0, :'GMT-2'
          
        end
      end
    end
  end
end
