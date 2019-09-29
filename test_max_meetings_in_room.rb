# Written by Forest J. Handford (She/Her)

require_relative 'max_meetings_in_room'
require 'minitest/autorun'

# Class for testing
class TestMaxMeetingsInRoom < Minitest::Test
  def test_array
    max_meetings = MaxMeetingsInRoom.new
    assert_equal 4, max_meetings.room_meetings.count
    assert_equal 1, max_meetings.room_meetings[0].start
    assert_equal 2, max_meetings.room_meetings[0].finish
    assert_equal 3, max_meetings.room_meetings[1].start
    assert_equal 4, max_meetings.room_meetings[1].finish
    assert_equal 5, max_meetings.room_meetings[2].start
    assert_equal 7, max_meetings.room_meetings[2].finish
    assert_equal 8, max_meetings.room_meetings[3].start
    assert_equal 9, max_meetings.room_meetings[3].finish
  end
end
