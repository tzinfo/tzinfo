require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Etc #:nodoc:
      module GMT__m__9 #:nodoc:
        include TimezoneDefinition
        
        timezone 'Etc/GMT-9' do |tz|
          tz.offset :o0, 32400, 0, :'GMT-9'
          
        end
      end
    end
  end
end
