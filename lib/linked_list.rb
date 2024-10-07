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

    if @size.zero?
      @head = node_to_add
    else
      @tail.next_node = node_to_add
    end
    @tail = node_to_add

    @size += 1
  end

  def prepend(value)
    node_to_add = Node.new(value, @head)

    @head = node_to_add
    @tail = node_to_add if @size.zero?

    @size += 1
  end

  def at(index)
    return nil if index >= @size || index.negative?
    return @tail if index == @size - 1

    current_node = @head
    index.times { current_node = current_node.next_node }
    current_node
  end

  def pop
    return nil if @size.zero?

    old_tail = @tail
    if @size == 1
      @head = nil
      @tail = nil
    else
      pop_general
    end
    @size -= 1
    old_tail
  end

  def shift
    return nil if @size.zero?

    old_head = @head
    @tail = nil if @size == 1
    @head = @head.next_node
    @size -= 1
    old_head
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

  private

  def pop_general
    current_node = @head
    current_node = current_node.next_node until current_node.next_node == @tail
    current_node.next_node = nil
    @tail = current_node
  end
end
