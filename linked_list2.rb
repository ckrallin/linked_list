class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end
end

def reverse_list(list, previous=nil) #starts new list
    if list  #if there is a list
        next_node = list.next_node #defines next_node as the next node in the list
        list.next_node = previous #sets the next_node to equal the previous link in the list
        reverse_list(next_node, list) #links previous to the previous linked node in the list
    end
end




node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

print_values(node3)
puts "-------"

reverse_list(node3) #reverses node3 so that node1 becomes the first in the list
print_values(node1) #once the list is reversed node1 becomes the first in the list and the print_values goes through each node value
