# frozen_string_literal: true

require_relative 'node'

# LinkedList class for common interview questions
class LinkedList
  attr_reader :start_node

  def initialize(string)
    current_node = @start_node = Node.new
    final_index = string.size - 1

    string.chars.each_with_index do |char, index|
      current_node.value = char
      current_node = current_node.next = Node.new unless index == final_index
    end
  end

  def compare(obj)
    current_node = @start_node
    current_comp_node = obj.start_node
    while current_node
      return '>' if gt(current_comp_node, current_node)
      return '<' if lt(current_comp_node, current_node)
      return '=' if current_node.next.nil? && current_comp_node.next.nil?

      current_node = current_node.next
      current_comp_node = current_comp_node.next
    end
  end

  private

  def gt(current_comp_node, current_node)
    current_comp_node.value > current_node.value || current_node.last? && current_comp_node.next
  end

  def lt(current_comp_node, current_node)
    current_comp_node.value < current_node.value || current_comp_node.last? && current_node.next
  end
end
