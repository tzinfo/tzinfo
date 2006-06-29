require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Australia #:nodoc:
      module LHI #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'Australia/LHI', 'Australia/Lord_Howe'
      end
    end
  end
end
