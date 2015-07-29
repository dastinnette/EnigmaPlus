require 'minitest/autorun'
require 'minitest/pride'
require './lib/offset_generator'

class OffsetGeneratorTest < Minitest::Test

  def test_key_is_a_five_digit_number
    key = OffsetGenerator.new
    assert_equal 5, key.generate_key.length
    assert key.generate_key.class == String
  end

  def test_key_is_random_number
    key1 = OffsetGenerator.new.generate_key
    key2 = OffsetGenerator.new.generate_key
    refute key1 == key2
  end

  def test_date_is_a_six_digit_number
    generator = OffsetGenerator.new
    assert_equal 6, Time.now.strftime("%d%m%y").length
  end

  def test_date_formats_correctly
    skip
    # check for edge cases with punctuation and too many numbers given
  end

  def test_given_offset_returns_four_digit_number
    offset = OffsetGenerator.new
    assert_equal "1225", offset.given_offset(280715)
  end


  def test_offset_is_a_four_digit_number
    offset = OffsetGenerator.new
    assert_equal 4, offset.generate_offset.length
  end

  def test_offset_is_always_the_same
    offset1 = OffsetGenerator.new.generate_offset
    offset2 = OffsetGenerator.new.generate_offset
    assert offset1 == offset2
  end

end
