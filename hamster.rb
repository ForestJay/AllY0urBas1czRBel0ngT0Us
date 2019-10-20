#!/usr/bin/ruby
# Written by Forest J. Handford (She/Her)

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
    return false
  end

  def ancestors
    return [] if first_gen
    return [mother, father, mother.ancestors, father.ancestors]
  end 
end
