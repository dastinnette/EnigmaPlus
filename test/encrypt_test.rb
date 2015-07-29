require 'minitest/autorun'
require 'minitest/pride'
require './lib/encrypt'

class EncryptTest < Minitest::Test

  # def test_character_map_is_39_characters
  #   character_map = Encrypt.new.characters
  #   assert character_map
  #   assert_equal 39, character_map.count
  # end
  #
  # def test_a_cipher_rotates_properly_according_to_rotation
  #   rotation = Encrypt.new(1, 0, 0, 0)
  #   assert_equal ["b"], rotation.a_cipher.values_at("a")
  # end
  #
  # def test_b_cipher_rotates_properly_according_to_rotation
  #   rotation = Encrypt.new(2, 2, 45, 39)
  #   assert_equal ["c"], rotation.b_cipher.values_at("a")
  # end
  #
  # def test_c_cipher_rotates_properly_according_to_rotation
  #   rotation = Encrypt.new(1, 33, 3, 54)
  #   assert_equal ["d"], rotation.c_cipher.values_at("a")
  # end
  #
  # def test_d_cipher_rotates_properly_according_to_rotation
  #   rotation = Encrypt.new(1, 4, 66, 4)
  #   assert_equal ["e"], rotation.d_cipher.values_at("a")
  # end
  #
  # def test_input_encrypts_a_properly_based_on_rotation
  #   shift = Encrypt.new(1, 0, 0, 0)
  #   assert_equal "b", shift.encrypt_letter_a("a")
  # end
  #
  # def test_input_encrypts_b_properly_based_on_rotation
  #   shift = Encrypt.new(2, 2, 45, 39)
  #   assert_equal "c", shift.encrypt_letter_b("a")
  # end
  #
  # def test_input_encrypts_c_properly_based_on_rotation
  #   shift = Encrypt.new(1, 33, 3, 54)
  #   assert_equal "d", shift.encrypt_letter_c("a")
  # end
  #
  # def test_input_encrypts_d_properly_based_on_rotation
  #   shift = Encrypt.new(1, 4, 66, 4)
  #   assert_equal "e", shift.encrypt_letter_d("a")
  # end
  #
  # def test_word_encrypts_properly_based_on_simple_4_part_cipher
  #   encryptor = Encrypt.new(1, 1, 1, 1)
  #   input = "1234"
  #   assert_equal "2345", encryptor.encrypt(input)
  # end
  #
  # def test_word_encrypts_properly_based_on_4_different_4_part_cipher
  #   input = "1111"
  #   encryptor = Encrypt.new(1, 2, 3, 4)
  #   assert_equal "2345", encryptor.encrypt(input)
  # end
  #
  # def test_word_encrypts_properly_based_on_complex_4_part_cipher
  #   input = "1111"
  #   encryptor = Encrypt.new(27, 45, 99, 2)
  #   assert_equal "p7j3", encryptor.encrypt(input)
  # end
  #
  # def test_input_string_length_equals_output_string_length
  #   encryptor = Encrypt.new(1, 1, 1, 1)
  #   encryptor.get_rotations
  #   input = "1111"
  #   assert input.length == encryptor.encrypt(input).length
  # end

  def test_encrypts_file
    file_io = FileIO.new
    message = file_io.message("message.txt")
    encryptor = Encrypt.new
    encryptor.get_rotations
    assert_equal "77nhfolwsrwn5v1hiodl70wcz wg5zbpi1hb2kfepk   .waztx", encryptor.encrypt(message)
  end

end
