require 'minitest/autorun'
require 'minitest/pride'
require './lib/encrypt'

class EncryptTest < Minitest::Test

  def test_key_is_a_five_digit_number
    key = Key.new
    assert_equal 5, key.generate_key.length
  end

  def test_key_is_random_number
    key1 = Key.new
    key2 = Key.new
    refute key1 == key2
  end

  def test_rotation_a_returns_first_two_digits_of_key
    unlock = Key.new("12345")
    assert_equal "12", unlock.rot_a
  end

  def test_rotation_b_returns_second_and_third_digits_of_key
    unlock = Key.new("12345")
    assert_equal "23", unlock.rot_b
  end

  def test_rotation_c_returns_third_and_fourth_digits_of_key
    unlock = Key.new("12345")
    assert_equal "34", unlock.rot_c
  end

  def test_rotation_d_returns_fourth_and_fifth_digits_of_key
    unlock = Key.new("12345")
    assert_equal "45", unlock.rot_d
  end

  def test_offset_is_a_four_digit_number
    skip
    offset = Offset.new
    assert_equal 4, key.generate_key.length
  end

  def test_key_is_random_number
    key1 = Key.new
    key2 = Key.new
    refute key1 == key2
  end

  def test_rotation_a_returns_first_two_digits_of_key
    unlock = Key.new("12345")
    assert_equal "12", unlock.rot_a
  end

  def test_rotation_b_returns_second_and_third_digits_of_key
    unlock = Key.new("12345")
    assert_equal "23", unlock.rot_b
  end

  def test_rotation_c_returns_third_and_fourth_digits_of_key
    unlock = Key.new("12345")
    assert_equal "34", unlock.rot_c
  end

  def test_rotation_d_returns_fourth_and_fifth_digits_of_key
    unlock = Key.new("12345")
    assert_equal "45", unlock.rot_d
  end
end
