module TZInfo
  module Data
    module Definitions
      module UTC
        include TimezoneDefinition
        
        linked_timezone 'UTC', 'Etc/UTC'
      end
    end
  end
end
