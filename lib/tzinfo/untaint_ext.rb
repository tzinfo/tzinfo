# encoding: UTF-8
# frozen_string_literal: true

module TZInfo
  module UntaintExt # :nodoc:
    refine Object do
      def untaint
        self
      end
    end
  end
end
