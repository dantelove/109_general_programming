# adv1_4.rb

# Modify your transpose method from the previous exercise so it works with any 
# matrix with at least 1 row and 1 column.

# def transpose(matrix)
#   new_matrix = []
#   n = 0

#   loop do
#     matrix.each do |array|
#       new_matrix << array[n]
#     end

#     break if n == matrix.size - 1
#     n += 1
#   end

#   new_matrix.each_slice(3).to_a
# end

# def transpose(matrix)
#   result = []
#     (0..2).each do |column_index|
#       new_row = (0..2).map { |row_index| matrix[row_index][column_index] }
#       result << new_row
#     end
#   result
# end

def transpose(array)
  new_width = array.size
  new_height = array[0].size
  results = []
  n = 0

  if new_width == 1 || new_height == 1
    if new_height >= new_width
      new_height.times do
        results << [array[0].shift]
      end
    else
      new_height.times do
        array = array.flatten
        results << array
      end
    end
  else
    loop do
      array.each do |arr|
      results << arr[n]
    end

    break if n == new_height - 1
     n += 1
  end

    results = results.each_slice(3).to_a
  end

  results
end

p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
   [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]