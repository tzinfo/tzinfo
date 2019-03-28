# encoding: UTF-8

module TZInfo
  module Definitions
    module Etc
      module UCT
        include TimezoneDefinition
        
        linked_timezone 'Etc/UCT', 'Etc/UTC'
      end
    end
  end
end
