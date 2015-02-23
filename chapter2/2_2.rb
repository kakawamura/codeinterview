=begin
  Question: Implement an algorithm to find the nth to last element of a singly linked list. 

  February 18th 2015
  Kazushi Kawamura
=end

# return the nth element of the linked list
def nthToLastElement(array, n)
  array.slice(n-1..-1)
end
