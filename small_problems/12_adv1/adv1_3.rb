# adv1_3.rb

# Write a method that takes a 3 x 3 matrix in Array of Arrays format and returns 
# the transpose of the original matrix. Note that there is a Array#transpose 
# method that does this -- you may not use it for this exercise. You also are 
# not allowed to use the Matrix class from the standard library. Your task is to 
# do this yourself.

# Take care not to modify the original matrix: you must produce a new matrix and 
# leave the original matrix unchanged.

def transpose(matrix)
  new_matrix = []
  n = 0

  loop do
    matrix.each do |array|
      new_matrix << array[n]
    end

    break if n == matrix.size - 1
    n += 1
  end

  new_matrix.each_slice(3).to_a
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix =  transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]