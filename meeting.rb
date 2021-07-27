# frozen_string_literal: true

# This is class stores meeting data.
class Meeting
  attr_accessor :start, :finish

  def initialize(start, finish)
    @start = start
    @finish = finish
  end

  def length
    @finish - @start
  end

  def times
    "#{@start} - #{@finish} (#{length})"
  end

  def <(other)
    length < other.length
  end

  def overlaps(other)
    !(other.finish <= @start || @finish <= other.start)
  end
end
