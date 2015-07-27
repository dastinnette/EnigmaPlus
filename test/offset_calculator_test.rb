require 'minitest/autorun'
require 'minitest/pride'
require './lib/offset_calculator'

class OffsetCalculatorTest < Minitest::Test

  def test_rotation_a_returns_first_two_digits_of_key
    lock = OffsetCalculator.new("12345")
    assert_equal "12", lock.rot_a
  end

  def test_rotation_b_returns_second_and_third_digits_of_key
    lock = OffsetCalculator.new("12345")
    assert_equal "23", lock.rot_b
  end

  def test_rotation_c_returns_third_and_fourth_digits_of_key
    lock = OffsetCalculator.new("12345")
    assert_equal "34", lock.rot_c
  end

  def test_rotation_d_returns_fourth_and_fifth_digits_of_key
    lock = OffsetCalculator.new("12345")
    assert_equal "45", lock.rot_d
  end

  def test_offset_a_returns_negative_fourth_digit_of_date_function
    offset = OffsetCalculator.new("1225")
    assert_equal "1", offset.off_a
  end

  def test_offset_b_returns_negative_third_digit_of_date_function
    offset = OffsetCalculator.new("1225")
    assert_equal "2", offset.off_b
  end

  def test_offset_c_returns_negative_second_digit_of_date_function
    offset = OffsetCalculator.new("1225")
    assert_equal "2", offset.off_c
  end

  def test_offset_d_returns_negative_first_digit_of_date_function
    offset = OffsetCalculator.new("1225")
    assert_equal "5", offset.off_d
  end

end
