# frozen_string_literal: true

require_relative 'lib/linked_list'

linked_list = LinkedList.new
puts linked_list
linked_list.append(1)
puts linked_list
linked_list.append(2)
puts linked_list
linked_list.append(3)
puts linked_list

linked_list.prepend(0)
puts linked_list
linked_list.prepend(-1)
puts linked_list
linked_list.prepend(-2)
puts linked_list

puts linked_list.head.value
puts linked_list.tail.value
puts linked_list.size

puts linked_list.at(0).value
puts linked_list.at(1).value
puts linked_list.at(5).value
p linked_list.at(6)
p linked_list.at(-1)
p LinkedList.new.at(0)
