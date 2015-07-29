require 'minitest/autorun'
require 'minitest/pride'
require './lib/file_io'

class FileIOTest < Minitest::Test

  def test_encrypt_loads_message_to_encrypt

  end

  def test_prints_output_message_to_command_line
    file = FileIO.new
    calc = OffsetCalculator.new('12345', '280715')
    assert_equal "Created encrypted.txt with the key 12345 and date 280715.", file.print_message
  end


end
