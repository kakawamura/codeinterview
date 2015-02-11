=begin
  Question: Write an alogirthm such that if an element in an M x N matrix is 0, it's entire row and
            column is set to 0.
   
  February 6th 2015
  Kazushi Kawmaura
=end

def setZeroToMatrix(matrix)
  zeroRow = Array.new(matrix.count, false)
  zeroCol = Array.new(matrix[0].count, false)

  # check which row or column has zero
  matrix.each_index do |rowIndex|
    matrix[0].each_index do |colIndex|
      zeroRow[rowIndex], zeroCol[colIndex] = true, true if matrix[rowIndex][colIndex] == 0
    end
  end

  # update the row in matrix
  matrix.map!.with_index { |row, i| zeroRow[i] ? row.fill(0) : row }
  # udapte the column in the matrix
  matrix.each_index do |rowIndex|
    matrix[rowIndex].map!.with_index { |col, i| zeroCol[i] ? col = 0 : col }
  end

  return matrix
end

matrix = [[0,2,3,4,5,6,7],[3,4,4,5,6,7,8],[1,2,4,6,3,5,4,6]]
print setZeroToMatrix(matrix)
