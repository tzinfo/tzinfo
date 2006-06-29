require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Etc #:nodoc:
      module GMT__m__8 #:nodoc:
        include TimezoneDefinition
        
        timezone 'Etc/GMT-8' do |tz|
          tz.offset :o0, 28800, 0, :'GMT-8'
          
        end
      end
    end
  end
end
