#!/usr/bin/ruby
# Written by Forest J. Handford (She/Her)

# This is a Ruby implementation of the ideal solution for a common interview
# question.
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
    parents = ancestors(self)
    other_parents = search_parents(other)
    parents.each do |parent|
      return true if other_parents.includes(parent)
    end
    return false
  end

  def ancestors
    return [] if first_gen
    return [mother, father, mother.ancestors, father.ancestors]
  end 
end
