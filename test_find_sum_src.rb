# frozen_string_literal: true

# Written by Forest J. Handford (She/Her)

require_relative 'sum_src'
require 'minitest/autorun'

# Class for testing
class TestSumSrc < Minitest::Test
  def test_common_cases
    assert_nil SumSrc.new([1, 2, 3, 9], 8).find
    assert_equal [4, 4], SumSrc.new([1, 2, 4, 4], 8).find
    assert_equal [20, 60], SumSrc.new([1, 2, 4, 4, 5, 6, 7, 8, 9, 10, 11, 12,
                                       13, 14, 15, 16, 17, 18, 19, 20, 60],
                                      80).find
  end
end
