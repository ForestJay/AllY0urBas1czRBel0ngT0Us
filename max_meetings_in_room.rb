#!/usr/bin/ruby
# Written by Forest J. Handford (She/Her)

require_relative 'meeting'

# This is a Ruby implementation of the ideal solution for a common interview
# question.
class MaxMeetingsInRoom
  attr_accessor :room_meetings

  def check_overlaps(meeting)
    @room_meetings.each do |room_meeting|
      return true if room_meeting.overlaps(meeting)
    end
    false
  end

  def add_room_meetings
    @all_meetings_list.each do |meeting|
      @room_meetings << meeting if check_overlaps(meeting) == false
    end
  end

  def initialize
    @all_meetings_list = [Meeting.new(1, 2),
                          Meeting.new(3, 4),
                          Meeting.new(0, 6),
                          Meeting.new(5, 7),
                          Meeting.new(8, 9),
                          Meeting.new(5, 9)].sort_by(&:length)
    @room_meetings = []
    add_room_meetings
    @room_meetings = @room_meetings.sort_by(&:start)
  end

  def print_room_meetings
    count = 0
    @room_meetings.each do |meeting|
      count += 1
      puts 'Meeting #' + count.to_s + ': ' + meeting.times
    end
  end
end

MaxMeetingsInRoom.new.print_room_meetings if $PROGRAM_NAME == __FILE__
