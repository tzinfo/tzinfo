require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Etc #:nodoc:
      module GMT__p__11 #:nodoc:
        include TimezoneDefinition
        
        timezone 'Etc/GMT+11' do |tz|
          tz.offset :o0, -39600, 0, :'GMT+11'
          
        end
      end
    end
  end
end
