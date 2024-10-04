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
