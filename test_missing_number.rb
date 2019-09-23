# Written by Forest J. Handford (She/Her)

require_relative 'missing_number'
require 'minitest/autorun'

# Class for testing PhoneDrop methods
class TestMissingNumber < Minitest::Test
  def test_find_missing
    missing_number = MissingNumber.new
    assert_equal 7, missing_number.find_missing
    assert_equal 71, missing_number.sum
  end
end
