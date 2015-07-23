require 'minitest/autorun'
require 'minitest/pride'
require './lib/encrypt'

class EncryptTest < Minitest::Test

  def test_key_is_a_five_digits
    key = Key.new
    assert_equal 5, key.to_s.length
  end
end
