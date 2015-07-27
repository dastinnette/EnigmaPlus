require 'minitest/autorun'
require 'minitest/pride'
require './lib/date'

class DateTest < Minitest::Test

  def test_date_is_six_digit_number
    date = Date.new
    assert_equal 6, date.generate_date.length
  end

  def test_offset_is_a_four_digit_number
    offset = Date.new
    assert_equal 4, offset.find_offset.length
  end

end
