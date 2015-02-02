=begin
  Question:
  Implement an algorithm to determine if a string has all unique characters?
  What if you can not use additional data structures?
   
  January 26th 2015
  Kazushi Kawmaura
=end

def string_unique?(s)
  for i in 0...s.length
    puts s[i]
    for j in i+1..s.length
      if s[i] == s[j]
        return true
      end
    end
  end
  return false
end

def string_unique2?(s)
  char_set = Array.new(256, false)
  s.each_char do |x|
    if char_set[x.ord]
      return false
    end
    char_set[x.ord] = true
  end
  return true;
end

puts string_unique2?("word")
puts string_unique2?("notunique")
puts string_unique2?("bike")
puts string_unique2?("kazushii")

