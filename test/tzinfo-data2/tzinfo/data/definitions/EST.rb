# encoding: UTF-8
# frozen_string_literal: true

# This file contains data derived from the IANA Time Zone Database
# (https://www.iana.org/time-zones).

module TZInfo
  module Data
    module Definitions
      module EST
        include Format2::TimezoneDefinition

        linked_timezone 'EST', 'America/Panama'
      end
    end
  end
end
