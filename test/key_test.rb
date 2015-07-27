require 'minitest/autorun'
require 'minitest/pride'
require './lib/key'

class KeyTest < Minitest::Test

  def test_key_is_a_five_digit_number
    key = Key.new
    assert_equal 5, key.generate_key.length
  end

  def test_key_is_random_number
    key1 = Key.new
    key2 = Key.new
    refute key1 == key2
  end
end
