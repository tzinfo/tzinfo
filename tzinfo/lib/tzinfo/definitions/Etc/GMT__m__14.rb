require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Etc #:nodoc:
      module GMT__m__14 #:nodoc:
        include TimezoneDefinition
        
        timezone 'Etc/GMT-14' do |tz|
          tz.offset :o0, 50400, 0, :'GMT-14'
          
        end
      end
    end
  end
end
