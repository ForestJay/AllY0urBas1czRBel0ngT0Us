#!/usr/bin/ruby
# frozen_string_literal: true

# Written by Forest J. Handford (She/Her)

# This is a Ruby implementation of the ideal solution for a common interview
# question.
class FirstReplicatingCharacter
  def initialize(string)
    @string = string
  end

  # Return the first repeating character else nil
  def find
    total = {}
    @string.split('').each do |char|
      if total[char].nil?
        total[char] = 1
      else
        return char
      end
    end
    nil
  end
end
