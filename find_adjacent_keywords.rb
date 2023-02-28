# frozen_string_literal: true

# Written by Forest J. Handford (She/Her)

# This is a Ruby implementation of the ideal solution for a common interview
# question (Return the start position within an array where a given set of
# keywords appears together).
class FindAdjacentKeywords
  def self.process_list(list, keywords)
    keyword_count = keywords.size
    indeces = []

    list.each_with_index do |value, index|
      count_temp = update_count(list, keywords.dup, value, keyword_count, index)
      indeces.append(index) if count_temp.zero?
    end
    indeces
  end

  def self.update_count(list, keywords, value, count, index)
    while keywords.any?(value) && count.positive?
      count -= 1
      keywords.delete_at(keywords.index(value))
      index += 1
      value = list[index]
    end
    count
  end
end
