# Written by Forest J. Handford (She/Her)

require_relative 'meeting'
require 'minitest/autorun'

# Class for testing
class TestMeeting < Minitest::Test
  def test_length
    assert_equal 5, Meeting.new(0, 5).length
    assert_equal 3, Meeting.new(3, 6).length
    assert_equal 2, Meeting.new(10, 12).length
    assert_equal 1, Meeting.new(10, 11).length
  end

  def test_less_than_operator
    assert Meeting.new(0, 5) < Meeting.new(2, 9)
    assert Meeting.new(4, 5) < Meeting.new(1, 3)
    assert !(Meeting.new(4, 5) < Meeting.new(1, 2))
    assert !(Meeting.new(1, 8) < Meeting.new(4, 5))
  end

  def test_overlaps
    assert !(Meeting.new(4, 5).overlaps(Meeting.new(1, 2)))
    assert !(Meeting.new(0, 3).overlaps(Meeting.new(4, 8)))
    assert !(Meeting.new(5, 10).overlaps(Meeting.new(3, 4)))
    assert !(Meeting.new(0, 3).overlaps(Meeting.new(3, 8)))
    assert !(Meeting.new(4, 6).overlaps(Meeting.new(3, 4)))
    assert Meeting.new(4, 7).overlaps(Meeting.new(1, 8))
    assert Meeting.new(4, 7).overlaps(Meeting.new(5, 6))
    assert Meeting.new(3, 5).overlaps(Meeting.new(4, 6))
  end
end
