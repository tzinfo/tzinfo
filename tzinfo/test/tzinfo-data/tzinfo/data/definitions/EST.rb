module TZInfo
  module Data
    module Definitions
      module EST
        include TimezoneDefinition
        
        timezone 'EST' do |tz|
          tz.offset :o0, -18000, 0, :EST
          
        end
      end
    end
  end
end
