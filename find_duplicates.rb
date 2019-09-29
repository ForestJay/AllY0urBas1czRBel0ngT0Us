#!/usr/bin/ruby
# Written by Forest J. Handford (She/Her)

# This is a Ruby implementation of the ideal solution for a common interview
# question.
class FindDupes
  # Answer for current array (22, 88, 134) are duplicates
  NUMBERS = [1, 88, 18, 88, 22, 134, 95, 134, 5, 8, 88, 22, 59, 134, 3, 42,
             133, 67, 163].freeze
  attr_accessor :count

  def build_count
    @count = {}
    NUMBERS.each do |num|
      if @count[num].nil?
        @count[num] = 1
      else
        @count[num] += 1
      end
    end
  end

  def list_dupes
    build_count
    @count.each do |key, val|
      if val > 1
        puts 'There are ' + val.to_s + ' of number ' + key.to_s +
             ' in the list!'
      end
    end
  end
end

FindDupes.new.list_dupes if $PROGRAM_NAME == __FILE__
