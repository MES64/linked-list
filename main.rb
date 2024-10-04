# frozen_string_literal: true

require_relative 'lib/linked_list'
require_relative 'lib/node'

linked_list = LinkedList.new
p linked_list

p linked_list.head
p linked_list.tail
p linked_list.size

puts ''

node2 = Node.new(7)
node1 = Node.new(6, node2)
p node1
p node2
p Node.new
