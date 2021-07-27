#!/usr/bin/ruby
# frozen_string_literal: true

# Written by Forest J. Handford (She/Her)

# This is a Ruby implementation of the ideal solution for a problematic question
# for transgender and non-binary people.
class Hamster
  attr_reader :father, :mother, :first_gen, :first_gen_ancestors

  def initialize(mother, father)
    if mother && father
      @mother = mother
      @father = father
      @first_gen_ancestors = if @mother.first_gen && @father.first_gen
                               [@mother, @father]
                             else
                               [@mother.first_gen_ancestors, @father.first_gen_ancestors].flatten.uniq
                             end
    else
      @first_gen = true
    end
  end

  def related_to(other)
    return true if @mother == other.mother || @father == other.father

    first_gen_ancestors.each do |ancestor|
      return true if other.first_gen_ancestors.include?(ancestor)
    end
    false
  end
end
