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

puts ''

puts linked_list
linked_list.size.times do
  puts linked_list.pop.value
  puts linked_list
end
p linked_list.pop
puts linked_list
puts linked_list.size

puts ''

-2.upto(3) { |value| linked_list.append(value) }
puts linked_list
linked_list.size.times do
  puts linked_list.shift.value
  puts linked_list
end
p linked_list.pop
puts linked_list
puts linked_list.size

puts ''

-2.upto(3) { |value| linked_list.append(value) }
puts linked_list
puts linked_list.contains?(-3)
puts linked_list.contains?(-2)
puts linked_list.contains?(0)
puts linked_list.contains?(3)
puts linked_list.contains?(4)
puts linked_list.contains?('hi')
puts LinkedList.new.contains?(0)

puts ''

puts linked_list
p linked_list.find(-3)
p linked_list.find(-2)
p linked_list.find(0)
p linked_list.find(3)
p linked_list.find(4)
p linked_list.find('hi')
p LinkedList.new.find(0)

puts ''

linked_list = LinkedList.new
puts linked_list
linked_list.insert_at(0, 1)
linked_list.insert_at(0, -1)
puts linked_list
linked_list.insert_at(0, 0)
puts linked_list
linked_list.insert_at(-1, 0)
puts linked_list
linked_list.shift
puts linked_list
linked_list.insert_at(1, 1)
puts linked_list
linked_list.insert_at(100, 1)
puts linked_list
linked_list.insert_at(101, 0)
puts linked_list
linked_list.insert_at(102, linked_list.size)
puts linked_list
linked_list.insert_at(103, 2)
puts linked_list
puts linked_list.size
puts linked_list.head.value
puts linked_list.tail.value

puts ''
puts linked_list
linked_list.remove_at(-1)
linked_list.remove_at(linked_list.size)
puts linked_list
linked_list.remove_at(0)
puts linked_list
linked_list.remove_at(linked_list.size - 1)
puts linked_list
linked_list.remove_at(2)
puts linked_list
puts linked_list.head.value
puts linked_list.tail.value
puts linked_list.size
linked_list.remove_at(0)
puts linked_list
linked_list.insert_at(0, 0)
puts linked_list
linked_list.remove_at(2)
puts linked_list
linked_list.insert_at(1, 2)
puts linked_list
linked_list.remove_at(1)
puts linked_list
linked_list.remove_at(0)
puts linked_list
linked_list.insert_at(0, 0)
puts linked_list
linked_list.remove_at(1)
puts linked_list
linked_list.remove_at(0)
puts linked_list
linked_list.remove_at(0)
puts linked_list
p linked_list.head
p linked_list.tail
puts linked_list.size
