=begin
  Question: You have two numbers represented by a linked list, where each node contains a single
  digit. The digits are stored in reverse order, such that the 1's digit is the head of the 
  list. Write a function that adds the two numbers and returns the sum as a linked list

  EXAMPLE
  Input (3->1->5) + (5->9>-2)
  Output 8->0->8

  February 22th 2015
  Kazushi Kawamura
=end

def addList(array1, array2)
  carry = 0
  addedList = []
  array1.zip(array2).each do |x, y|
    addedList << (x + y) % 10 + carry
    carry = (x + y) / 10  
  end
  
  return addedList
end
