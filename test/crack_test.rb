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
    assert_equal [36, 11, 13, 25], crack.final_index
  end

  def test_crack_finds_distance_from_known_character_to_encrypted
    file_io = FileIO.new
    message = file_io.message("crack_test.txt")
    crack   = Crack.new
    crack.rotation_one
    known_char = "n"
    char_index = -4
    assert_equal "11", crack.find_rotation(known_char, char_index)
  end

  def test_crack_finds_distance_from_known_character_to_encrypted
    file_io = FileIO.new
    message = file_io.message("crack_test.txt")
    crack   = Crack.new
    crack.rotation_one
    known_char = "n"
    char_index = -4
    assert_equal "11", crack.find_rotation(known_char, char_index)
  end

  # def test_rotation_one_works
  #   file_io = FileIO.new
  #   message = file_io.message("crack_test.txt")
  #   crack   = Crack.new
  #   known_char = "."
  #   char_index =
  #   assert_equal " ", crack.find_rotation(known_char, char_index)
  # end


end
