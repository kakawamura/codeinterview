=begin
  Question:
  Write a method to replace all spaces in a string with '%20'.

  February 2nd 2015
  Kazushi Kawmaura
=end

# param: string
def replaceWhiteSpace(string)
  return string.split(//).map { |x| x = (x == " ") ? "%20" : x }.join
end

puts replaceWhiteSpace("this is a string with some white spaces")
