#!/usr/bin/ruby
# frozen_string_literal: true

# Test if you can make a word cloud with the contents of a newspaper
# Written by Forest J. Handford (She/Her)

def can_make_word_cloud(newspaper, word_cloud)
  word_cloud.each do |word|
    return false unless newspaper.include?(word)

    newspaper.delete_at(newspaper.find_index(word))
  end
  true
end

puts can_make_word_cloud(%w[my city rules car boat], %w[my city drools])
puts can_make_word_cloud(%w[my city rules], %w[my city my rules])
puts can_make_word_cloud(%w[my city rules my team wins my], %w[my rules my city])
