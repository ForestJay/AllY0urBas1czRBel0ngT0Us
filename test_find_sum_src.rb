# Written by Forest J. Handford (She/Her)

require_relative 'sum_src'
require 'minitest/autorun'

# Class for testing
class TestSumSrc < Minitest::Test
  def test_common_cases
    assert_nil SumSrc.new([1, 2, 3, 9], 8).find
    assert_equal [4, 4], SumSrc.new([1, 2, 4, 4], 8).find
  end
end
