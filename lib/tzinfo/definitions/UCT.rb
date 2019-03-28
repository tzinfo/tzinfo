# encoding: UTF-8

module TZInfo
  module Definitions
    module UCT
      include TimezoneDefinition
      
      linked_timezone 'UCT', 'Etc/UTC'
    end
  end
end
