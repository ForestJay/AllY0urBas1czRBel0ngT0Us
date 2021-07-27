# frozen_string_literal: true

# Written by Forest J. Handford (She/Her)

require_relative 'phone_drop'
require 'minitest/autorun'

# Class for testing PhoneDrop methods
class TestPhoneDrop < Minitest::Test
  def test_test_floor
    phone_drop = PhoneDrop.new
    assert_equal PhoneDrop::IN_TACT, phone_drop.test_floor
  end

  def test_floor_count
    assert_equal PhoneDrop::MAX_FLOORS, PhoneDrop::FLOORS.count
  end

  def test_find_floor
    phone_drop = PhoneDrop.new
    phone_drop.find_floor
    assert_equal phone_drop.drops, 15
    assert_equal phone_drop.bottom_range, 98
  end
end
