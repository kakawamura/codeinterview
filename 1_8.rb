=begin
  Question: Assume you have a method isSubString which checks if one word is a substring of
  another. Given two strings, s1 and s1, write code to check if s2 is a rotation of s1 using
  only one call to isSubstring (i.e., "waterbottle" is a rotation of "erbottlewat").

  February 12th 2015
  Kazushi Kawmaura
=end

module String_util
  def sort
    self.chars.sort.join
  end
end

# the method for the question return true if it is a s1 is a rotation of s2
# which means if it is an anagram
def isSubString(s1, s2)
  return s1.sort == s2.sort ? true : false
end

class String
  include String_util
end

puts isSubString("waterbottle", "erbottlewat")
