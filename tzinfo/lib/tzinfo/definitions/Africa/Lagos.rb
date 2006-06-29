require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Africa #:nodoc:
      module Lagos #:nodoc:
        include TimezoneDefinition
        
        timezone 'Africa/Lagos' do |tz|
          tz.offset :o0, 816, 0, :LMT
          tz.offset :o1, 3600, 0, :WAT
          
          tz.transition 1919, 8, :o1, 4359964483, 1800
        end
      end
    end
  end
end
