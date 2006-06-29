require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Etc #:nodoc:
      module UCT #:nodoc:
        include TimezoneDefinition
        
        timezone 'Etc/UCT' do |tz|
          tz.offset :o0, 0, 0, :UCT
          
        end
      end
    end
  end
end
