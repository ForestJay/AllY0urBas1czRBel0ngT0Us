# Written by Forest J. Handford (She/Her)

require_relative 'phone_drop'
require 'minitest/autorun'

# Class for testing PhoneDrop methods
class TestPhoneDrop < Minitest::Test
  def setup
    @phone_drop = PhoneDrop.new
  end

  def test_test_floor
    assert_equal 'In Tact', @phone_drop.test_floor
  end
end
