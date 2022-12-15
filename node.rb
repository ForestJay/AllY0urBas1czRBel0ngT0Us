# frozen_string_literal: true

# A node class for common interview problems
class Node
  attr_accessor :value, :next

  def last?
    return true if @next.nil?

    false
  end
end
