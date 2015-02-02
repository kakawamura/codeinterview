=begin
  Question:
  Write a method to decide if two string are anagrams or not

  February 2nd 2015
  Kazushi Kawmaura
=end

# param: array of Strings
def anagram?(stringArray)
  return stringArray.map { |s| s.chars.sort.join }.uniq.count == 1 ? true : false
end
