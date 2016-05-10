require 'date'
require 'rational' unless defined?(Rational)

module TZInfo

  # Methods to support different versions of Ruby.
  #
  # @private
  module RubyCoreSupport #:nodoc:

    # Call String#force_encoding if this version of Ruby has encoding support
    # otherwise treat as a no-op.
    if String.method_defined?(:force_encoding)
      def self.force_encoding(str, encoding)
        str.force_encoding(encoding)
      end
    else
      def self.force_encoding(str, encoding)
        str
      end
    end


    # Wrapper for File.open that supports passing hash options for specifying
    # encodings on Ruby 1.9+. The options are ignored on earlier versions of
    # Ruby.
    if RUBY_VERSION =~ /\A1\.[0-8]\./
      def self.open_file(file_name, mode, opts, &block)
        File.open(file_name, mode, &block)
      end
    else
      def self.open_file(file_name, mode, opts, &block)
        File.open(file_name, mode, opts, &block)
      end
    end
  end
end
