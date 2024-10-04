# frozen_string_literal: true

require_relative 'node'

# LinkedList class implements a linked list
# Includes information about the head, tail, and size of the list
# Methods: head, tail, size
class LinkedList
  attr_reader :head, :tail, :size

  def initialize
    @head = nil
    @tail = nil
    @size = 0
  end

  def append(value)
    node_to_add = Node.new(value)

    if size.zero?
      @head = node_to_add
    else
      @tail.next_node = node_to_add
    end
    @tail = node_to_add

    @size += 1
  end

  def to_s
    current_node = @head
    node_arr = []
    until current_node.nil?
      node_arr << "( #{current_node.value} ) -> "
      current_node = current_node.next_node
    end
    (node_arr << 'nil').join
  end
end
