# frozen_string_literal: true

require_relative 'node'

# LinkedList class implements a linked list
# Includes information about the head, tail, and size of the list
# Methods: head, tail, size, append, prepend, at, pop, shift, contains?, find,
# insert_at, remove_at, to_s
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
    old_tail = @tail
    remove_at(@size - 1)
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

  def contains?(value)
    !find(value).nil?
  end

  def find(value)
    current_node = @head
    @size.times do |index|
      return index if current_node.value == value

      current_node = current_node.next_node
    end
    nil
  end

  def insert_at(value, index)
    return nil if index > @size || index.negative?
    return prepend(value) if index.zero?
    return append(value) if index == @size

    current_node = at(index - 1)
    current_node.next_node = Node.new(value, current_node.next_node)
    @size += 1
  end

  def remove_at(index)
    return nil if index >= @size || index.negative?
    return shift if index.zero?

    current_node = at(index - 1)
    @tail = current_node if index == @size - 1
    current_node.next_node = current_node.next_node.next_node
    @size -= 1
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
