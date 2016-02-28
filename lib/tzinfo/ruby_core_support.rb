require 'date'
require 'rational' unless defined?(Rational)

module TZInfo

  # Methods to support different versions of Ruby.
  #
  # @private
  module RubyCoreSupport #:nodoc:

    # Returns true if Time on the runtime platform supports Times defined
    # by negative 32-bit timestamps, otherwise false.
    begin
      Time.at(-1)
      Time.at(-2147483648)

      def self.time_supports_negative
        true
      end
    rescue ArgumentError
      def self.time_supports_negative
        false
      end
    end

    # Returns true if Time on the runtime platform supports Times defined by
    # 64-bit timestamps, otherwise false.
    begin
      Time.at(-2147483649)
      Time.at(2147483648)

      def self.time_supports_64bit
        true
      end
    rescue RangeError
      def self.time_supports_64bit
        false
      end
    end

    # Return the result of Time#nsec if it exists, otherwise return the
    # result of Time#usec * 1000.
    if Time.method_defined?(:nsec)
      def self.time_nsec(time)
        time.nsec
      end
    else
      def self.time_nsec(time)
        time.usec * 1000
      end
    end

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
