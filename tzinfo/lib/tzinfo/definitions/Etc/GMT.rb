require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Etc #:nodoc:
      module GMT #:nodoc:
        include TimezoneDefinition
        
        timezone 'Etc/GMT' do |tz|
          tz.offset :o0, 0, 0, :GMT
          
        end
      end
    end
  end
end
