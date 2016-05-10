# encoding: UTF-8

require File.join(File.expand_path(File.dirname(__FILE__)), 'test_utils')

include TZInfo

class TCRubyCoreSupport < Minitest::Test
  begin
    SUPPORTS_ENCODING = !!Encoding
  rescue NameError
    SUPPORTS_ENCODING = false
  end

  def check_open_file_test_file_bytes(test_file)
    if SUPPORTS_ENCODING
      File.open(test_file, 'r') do |file|
        file.binmode
        data = file.read(2)
        refute_nil(data)
        assert_equal(2, data.length)
        bytes = data.unpack('C2')
        assert_equal(0xC2, bytes[0])
        assert_equal(0xA9, bytes[1])
      end
    end
  end

  def check_open_file_test_file_content(file)
    content = file.gets
    refute_nil(content)
    content.chomp!

    if SUPPORTS_ENCODING
      assert_equal('UTF-8', content.encoding.name)
      assert_equal(1, content.length)
      assert_equal(2, content.bytesize)
      assert_equal('©', content)
    else
      assert_equal('x', content)
    end
  end

  def test_open_file
    Dir.mktmpdir('tzinfo_test') do |dir|
      test_file = File.join(dir, 'test.txt')

      file = RubyCoreSupport.open_file(test_file, 'w', :external_encoding => 'UTF-8')
      begin
        file.puts(SUPPORTS_ENCODING ? '©' : 'x')
      ensure
        file.close
      end

      check_open_file_test_file_bytes(test_file)

      file = RubyCoreSupport.open_file(test_file, 'r', :external_encoding => 'UTF-8', :internal_encoding => 'UTF-8')
      begin
        check_open_file_test_file_content(file)
      ensure
        file.close
      end
    end
  end

  def test_open_file_block
    Dir.mktmpdir('tzinfo_test') do |dir|
      test_file = File.join(dir, 'test.txt')

      RubyCoreSupport.open_file(test_file, 'w', :external_encoding => 'UTF-8') do |file|
        file.puts(SUPPORTS_ENCODING ? '©' : 'x')
      end

      check_open_file_test_file_bytes(test_file)

      RubyCoreSupport.open_file(test_file, 'r', :external_encoding => 'UTF-8', :internal_encoding => 'UTF-8') do |file|
        check_open_file_test_file_content(file)
      end
    end
  end
end
