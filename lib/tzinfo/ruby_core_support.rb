require 'date'
require 'rational' unless defined?(Rational)

module TZInfo

  # Methods to support different versions of Ruby.
  #
  # @private
  module RubyCoreSupport #:nodoc:

    # DateTime in Ruby 1.8.6 doesn't consider times within the 60th second to be
    # valid. When attempting to specify such a DateTime, subtract the fractional
    # part and then add it back later
    if Date.respond_to?(:valid_time?) && !Date.valid_time?(0, 0, Rational(59001, 1000)) # 0:0:59.001
      def self.datetime_new(y=-4712, m=1, d=1, h=0, min=0, s=0, of=0, sg=Date::ITALY)
        if !s.kind_of?(Integer) && s > 59
          dt = DateTime.new(y, m, d, h, min, 59, of, sg)
          dt + (s - 59) / 86400
        else
          DateTime.new(y, m, d, h, min, s, of, sg)
        end
      end
    else
      def self.datetime_new(y=-4712, m=1, d=1, h=0, min=0, s=0, of=0, sg=Date::ITALY)
        DateTime.new(y, m, d, h, min, s, of, sg)
      end
    end

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
