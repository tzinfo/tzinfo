# encoding: UTF-8

module TZInfo
  module Definitions
    module Europe
      module Oslo
        include TimezoneDefinition
        
        linked_timezone 'Europe/Oslo', 'Europe/Berlin'
      end
    end
  end
end
