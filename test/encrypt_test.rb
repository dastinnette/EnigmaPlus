require 'minitest/autorun'
require 'minitest/pride'
require './lib/encrypt'

class EncryptTest < Minitest::Test

  def test_character_map_is_39_characters
    character_map = Encrypt.new.characters
    assert character_map
    assert_equal 39, character_map.count
  end

  def test_input_encrypts_a_properly_based_on_rotation
    shift = Encrypt.new
    shift.get_rotations
    assert_equal "n", shift.encrypt_letter_a("a")
  end

  def test_input_encrypts_b_properly_based_on_rotation
    shift = Encrypt.new
    shift.get_rotations
    assert_equal "z", shift.encrypt_letter_b("a")
  end

  def test_input_encrypts_c_properly_based_on_rotation
    shift = Encrypt.new
    shift.get_rotations
    assert_equal " ", shift.encrypt_letter_c("a")
  end

  def test_input_encrypts_d_properly_based_on_rotation
    shift = Encrypt.new
    shift.get_rotations
    assert_equal "l", shift.encrypt_letter_d("a")
  end

  def test_word_encrypts_properly_based_on_4_part_rotation
    encryptor = Encrypt.new
    encryptor.get_rotations
    input = "1111"
    assert_equal "bny,", encryptor.encrypt(input)
  end

  def test_input_string_length_equals_output_string_length
    encryptor = Encrypt.new
    encryptor.get_rotations
    input = "1111"
    assert input.length == encryptor.encrypt(input).length
  end

  def test_encrypts_file
    file_io = FileIO.new
    message = file_io.message("message.txt")
    encryptor = Encrypt.new
    encryptor.get_rotations
    # ('12345','280715')
    assert_equal "bny,", encryptor.encrypt(message)
  end

  def test_prints_output_message_to_command_line
    skip
    file_io = FileIO.new
    message = file_io.message("message.txt")
    encryptor = Encrypt.new
    encryptor.get_rotations
    file_io.output(encryptor.encrypt(message), "encrypted.txt")
    encryptor.print_message
    assert_equal "Created 'encrypted.txt' with the key 12345 and date 280715.", encryptor.print_message
  end
end
