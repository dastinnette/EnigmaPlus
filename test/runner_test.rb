require 'minitest/autorun'
require 'minitest/pride'
require './lib/runner'

class RunnerTest < Minitest::Test

  def test_it_generates_5_digit_key_if_no_key_input
    runner = Runner.new
    calc = OffsetCalculator.new
    assert calc.key
    assert_equal 5, calc.key.length
  end

  def test_it_accepts_5_digit_key_as_input
    runner = Runner.new
    calc = OffsetCalculator.new("12345")
    assert calc.key
    assert_equal 5, calc.key.length
  end

  def test_it_gets_six_digit_date_if_no_date_input
    runner = Runner.new
    calc = OffsetCalculator.new
    assert calc.date
    assert_equal 6, calc.date.length
  end

  def test_it_accepts_6_digit_date_as_input
    runner = Runner.new
    calc = OffsetCalculator.new("12345", 280715)
    assert calc.date
    assert_equal 6, calc.date.to_s.length
  end

end
