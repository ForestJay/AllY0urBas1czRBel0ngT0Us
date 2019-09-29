#!/usr/bin/ruby
# Written by Forest J. Handford (She/Her)

# This is a Ruby implementation of the ideal solution for a common interview
# question.
class FirstUnrepeatedCharacter
  def initialize(string)
    @string = string
  end

  # Return the first unrepeated character else nil
  def find
    @total = {}
    @chars = @string.split('')
    build_total
    @chars.each do |char|
      return char if @total[char] == 1
    end
    nil
  end

  def build_total
    @chars.each do |char|
      if @total[char].nil?
        @total[char] = 1
      else
        @total[char] += 1
      end
    end
  end
end
