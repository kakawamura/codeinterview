=begin
  Question 1.3:
  Design an algorithm and write code to remove the duplicate characters in a string
  without using any additional buffer. NOTE: One or two additional variables are fine.
  An extra copy of the array is not.
  
  FOLLOW UP
  Write the test cases for this method.

  January 29th 2015
  Kazushi Kawmaura
=end

def removeDuplicate(string)
  return string.split(//).uniq.join unless string.nil?
end

puts removeDuplicate("")
puts removeDuplicate(nil)
puts removeDuplicate("a")
puts removeDuplicate("aa")
puts removeDuplicate("this is")
puts removeDuplicate("aaaaaaaaaaaaa")
