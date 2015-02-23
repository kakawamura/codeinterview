=begin
  Question: Implement an algorithm to delete a node in the middle of a single linked list, give
  nly access to that node
  EXAMPE
  Input: the node 'c' from the linked list a->b->c->d->e
  Result: nothing is returned, but the new linked list looks like a->b->d->e

  February 22th 2015
  Kazushi Kawamura
=end

# delete middle node
def deleteMiddleNode(array)
  array.delete_at(array.count / 2)
end
