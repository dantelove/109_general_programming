# adv1_4.rb

# Modify your transpose method from the previous exercise so it works 
# with any matrix with at least 1 row and 1 column.

# def transpose(matrix)
#   results = Array.new(3){Array.new(3)}

#   m = 0
#   n = 0

#   3.times do 
#     results[m][n], results[m + 1][n], results[m + 2][n] = matrix[n]
#     n += 1
#   end

#   results
# end

#LS Solution

def transpose(matrix)
  result = []
  number_of_rows = matrix.size
  number_of_columns = matrix.first.size

  (0...number_of_columns).each do |column_index|
    new_row = (0...number_of_rows).map { |row_index| matrix[row_index][column_index] }
    result << new_row
  end

  result
end

p transpose([[1, 2, 3, 4]]) #== [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) #== [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) #==
  # [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) #== [[1]]