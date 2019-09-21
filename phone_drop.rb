#!/usr/bin/ruby
#
# This is a Ruby implementation of the ideal solution for a common interview
# question I give.
#
# Written by Forest J. Handford (She/Her)

BROKEN = 'Broken'.freeze
IN_TACT = 'In Tact'.freeze
MAX_FLOORS = 100 # Solution could be dynamic for this number
FLOORS = Array.new(MAX_FLOORS - 2, IN_TACT) + [BROKEN, BROKEN]

top_range = MAX_FLOORS
bottom_range = 0
current_floor = interval = 14
drops = 0

def test_floor(drops, current_floor)
  drops += 1
  puts 'Testing floor ' + current_floor.to_s + ' with drop ' + drops.to_s + '!'
  [FLOORS[current_floor - 1], drops]
end

while current_floor < top_range
  test_value, drops = test_floor(drops, current_floor)
  if test_value == IN_TACT
    bottom_range = current_floor
    interval -= 1
    current_floor += interval
  elsif test_value == BROKEN
    top_range = current_floor
    break
  end
  break if interval < 1
end

current_floor = bottom_range
while current_floor < top_range
  current_floor += 1
  test_value, drops = test_floor(drops, current_floor)
  break if test_value == BROKEN
end

puts 'Drops: ' + drops.to_s
puts 'Floor: ' + (current_floor - 1).to_s
