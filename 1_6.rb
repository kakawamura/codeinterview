# Question: Given an image represented by an NxN matrix, where each pixel in the image is 4
#           bytes, write a method to rotate the image by 90 degrees. Can you do this in place?
# 
# February 5th 2015
# Kazushi Kawmaura

def rotateImage(image, degree=90)
  n = image.count 
  rotated = Array.new(n) { Array.new(n) }
  image.each_index do |i|
    image.each_index do |j|
      rotated[j][(n-1)-i] = image[i][j]
    end
  end
  return rotated
end

img = [[1,2,3],[4,5,6],[7,8,9]]
print rotateImage(img)


