require "minitest"
require "./fibber"

class FibberText < Minitest::Test
  def test_is_fibber
    assert Fibber
  end

  def test_calculate_calculates_the_fibbonachi_pattern
    fibber = Fibber.new
    number_requested = 7
    calculations = fibber.calculate(number_requested)
    assert_equal [0,1,1,2,3,5,8], calculations
  end

  def test_display_prints_out_the_sequence_with_the_correct_format
    skip
    fibber = Fibber.new
    number_requested = 3
    calculations = fibber.calculate(number_requested)
    output = fibber.display(calculations, number_requested)
    assert_equal "Start with 0 and 1\n0 plus 1 is (1)\n1 plus 1 is (2)", output
  end

end
