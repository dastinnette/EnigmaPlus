require 'minitest/autorun'
require 'minitest/pride'
require './lib/crack'

class CrackTest < Minitest::Test

  def test_crack_loads_string_to_crack
    file_io = FileIO.new
    message = file_io.message("crack_test.txt")
    crack   = Crack.new
    assert message
  end

  def test_finds_length_of_string_to_crack
    file_io = FileIO.new
    message = file_io.message("crack_test.txt")
    crack   = Crack.new
    assert_equal 7, crack.message_length
  end

  def test_returns_proper_modulo_four_of_string_length
    file_io = FileIO.new
    message = file_io.message("crack_test.txt")
    crack   = Crack.new
    assert_equal 3, crack.find_modulo
  end

  def test_it_finds_correct_last_letter_rotation
    file_io = FileIO.new
    message = file_io.message("crack_test.txt")
    crack   = Crack.new
    assert_equal "C", crack.final_rotation
  end

  def
end
