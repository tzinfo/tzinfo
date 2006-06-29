require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Etc #:nodoc:
      module GMT__m__5 #:nodoc:
        include TimezoneDefinition
        
        timezone 'Etc/GMT-5' do |tz|
          tz.offset :o0, 18000, 0, :'GMT-5'
          
        end
      end
    end
  end
end
