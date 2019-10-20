#!/usr/bin/ruby
# Written by Forest J. Handford (She/Her)
#
# Tests w/ Tree Traversal take
#   0.000574s, 3483.1373 runs/s, 13932.5490 assertions/s.

# This is a Ruby implementation of the ideal solution for a problematic question
# for transgender and non-binary people.
class Hamster
  attr_reader :father, :mother, :first_gen

  def initialize(mother, father)
    if mother && father
      @mother = mother
      @father = father
    else
      @first_gen = true
    end
  end

  def related_to(other)
    return true if @mother == other.mother || @father == other.father
    parents = ancestors.flatten
    other_parents = other.ancestors.flatten
    parents.each do |parent|
      return true if other_parents.include?(parent)
    end
    false
  end

  def ancestors
    return [] if first_gen
    [mother, father, mother.ancestors, father.ancestors]
  end
end
