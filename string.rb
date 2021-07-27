# frozen_string_literal: true

# This is a Ruby implementation of the ideal solution for a common interview
# question.
class String
  def initialize(string)
    @string = string
  end

  def decompress
    expanded_string_from(0, @string.size)
  end

  def expanded_string_from(start, finish)
    output = ''
    number = ''
    index = 0
    sub_string = @string.split('').drop(start)
    while index < finish - start
      char = sub_string[index]
      if digit?(char)
        number += char
      elsif alpha?(char)
        output += char
      elsif char == '['
        final_index = closing_brace(index + 1)
        number.to_i.times do
          output += expanded_string_from(index + 1, final_index + 1)
        end
        index = final_index
      end
      index += 1
    end
    output
  end

  def alpha?(char)
    char =~ /[[:alpha:]]/
  end

  def digit?(char)
    char =~ /[[:digit:]]/
  end

  def closing_brace(index)
    open = 0
    @string.split('').drop(index).each_with_index do |char, sub_index|
      case char
      when ']'
        return index + sub_index if open.zero?

        open -= 1
      when '['
        open += 1
      end
    end
  end
end
