#!/usr/bin/ruby
# Written by Forest J. Handford (She/Her)

# This is a Ruby implementation of the ideal solution for a common interview
# question.
class SumSrc
  def initialize(numbers, sum)
    @numbers = numbers
    @sum = sum
  end

  # Return the two values from @numbers that create @sum
  def find
    @unprocessed = @numbers
    @unprocessed.each do |first|
      @unprocessed = @unprocessed.drop(1)
      @unprocessed.each do |number|
        return [first, number] if @sum == first + number
      end
    end
    nil
  end
end
