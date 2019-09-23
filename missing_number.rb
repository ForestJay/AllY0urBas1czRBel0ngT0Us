#!/usr/bin/ruby
# Written by Forest J. Handford (She/Her)

# This is a Ruby implementation of the ideal solution for a common interview
# question.
class MissingNumber
  NUMBERS = [2, 6, 9, 8, 1, 5, 3, 10, 4, 11, 12]

  attr_accessor :sum

  # Returns missing number
  def find_missing
    @sum = 0
    @sum_w_missing = 0
    NUMBERS.each_with_index do |val, index|
      @sum += val
      @sum_w_missing += index + 1
      @last_pos = index # This is being done assuming count is O(n)
    end
    @sum_w_missing += @last_pos + 2
    @sum_w_missing - @sum
  end
end

if $PROGRAM_NAME == __FILE__
  puts 'The missing number is ' + MissingNumber.new.find_missing.to_s
end
