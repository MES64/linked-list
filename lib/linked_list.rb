# frozen_string_literal: true

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
end
