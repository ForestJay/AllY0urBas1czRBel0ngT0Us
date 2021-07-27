#!/usr/bin/ruby
# frozen_string_literal: true

# Written by Forest J. Handford (She/Her)

# This is a Ruby implementation of the ideal solution for a common interview
# question I give.
class PhoneDrop
  attr_reader :bottom_range, :drops

  BROKEN = 'Broken'
  IN_TACT = 'In Tact'
  MAX_FLOORS = 100 # Solution could be dynamic for this number
  FLOORS = Array.new(MAX_FLOORS - 2, IN_TACT) + [BROKEN, BROKEN]

  def initialize
    @top_range = MAX_FLOORS
    @bottom_range = 0
    @current_floor = @interval = 14
    @drops = 0
  end

  def test_floor
    @drops += 1
    puts "Testing floor #{@current_floor} with drop #{@drops}!"
    FLOORS[@current_floor - 1]
  end

  def interval_search
    while @current_floor < @top_range
      test_value = test_floor
      case test_value
      when IN_TACT
        @bottom_range = @current_floor
        @interval -= 1
        @current_floor += @interval
      when BROKEN
        @top_range = @current_floor
        break
      end
      break if @interval < 1
    end
  end

  def linear_search
    @current_floor = @bottom_range
    while @current_floor < @top_range
      @current_floor += 1
      break if test_floor == BROKEN
    end
  end

  def find_floor
    interval_search
    linear_search
    puts "Drops: #{@drops}"
    @bottom_range = @current_floor - 1
    puts "Floor: #{bottom_range}"
  end
end

PhoneDrop.new.find_floor if $PROGRAM_NAME == __FILE__
