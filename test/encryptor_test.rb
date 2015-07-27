require 'minitest/autorun'
require 'minitest/pride'
require './lib/encryptor'

class EncryptorTest < Minitest::Test

  def test_character_map_is_39_characters
    character_map = Encryptor.new.characters
    assert character_map
    assert_equal 39, character_map.count
  end

  def test_input_encrypts_a_properly_based_on_rotation
    shift = Encryptor.new
    assert_equal "b", shift.encrypt_letter_a("a", 1)
  end

  def test_input_encrypts_b_properly_based_on_rotation
    shift = Encryptor.new
    assert_equal "c", shift.encrypt_letter_b("a", 2)
  end

  def test_input_encrypts_c_properly_based_on_rotation
    shift = Encryptor.new
    assert_equal "d", shift.encrypt_letter_a("a", 3)
  end

  def test_input_encrypts_d_properly_based_on_rotation
    shift = Encryptor.new
    assert_equal "e", shift.encrypt_letter_a("a", 4)
  end

  def test_word_encrypts_properly_based_on_simple_4_part_cipher
    input = "1234"
    encryptor = Encryptor.new
    assert_equal "2345", encryptor.encrypt(input, 1, 1, 1, 1)
  end

  def test_word_encrypts_properly_based_on_4_different_4_part_cipher
    input = "1111"
    encryptor = Encryptor.new
    assert_equal "2345", encryptor.encrypt(input, 1, 2, 3, 4)
  end

  def test_word_encrypts_properly_based_on_complex_4_part_cipher
    input = "1111"
    encryptor = Encryptor.new
    assert_equal "p7j3", encryptor.encrypt(input, 27, 45, 99, 2)
  end
end
