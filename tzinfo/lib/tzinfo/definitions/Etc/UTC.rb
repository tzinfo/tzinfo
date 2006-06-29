require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Etc #:nodoc:
      module UTC #:nodoc:
        include TimezoneDefinition
        
        timezone 'Etc/UTC' do |tz|
          tz.offset :o0, 0, 0, :UTC
          
        end
      end
    end
  end
end
