# This is a Ruby implementation of the ideal solution for a common interview
# question.
class SumSrc
  def initialize(numbers, sum)
    @numbers = numbers
    @sum = sum
  end

  # Return the two values from @numbers that create @sum
  def find
    partners = {}
    @numbers.each do |number|
      return [partners[number], number] if partners[number]
      partners[@sum - number] = number
    end
    nil
  end
end
