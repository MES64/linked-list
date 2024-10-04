# frozen_string_literal: true

# Node class contains information about the current value and a reference to the next node
class Node
  attr_accessor :value, :next_node

  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end
end
