# adv1_8.rb

# Write a method that takes two sorted Arrays as arguments, and 
# returns a new Array that contains all elements from both arguments 
# in sorted order.

# You may not provide any solution that requires you to sort the result 
# array. You must build the result array one element at a time in the 
# proper order.

# Your solution should not mutate the input arrays.

#LS Solution

def merge(array1, array2)
  index2 = 0
  result = []

  array1.each do |value|
    while index2 < array2.size && array2[index2] <= value
      result << array2[index2]
      index2 += 1
    end
    result << value
  end

  result.concat(array2[index2..-1])
end

p merge([1, 5, 9], [2, 6, 8]) #== [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) #== [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) #== [1, 4, 5]
p merge([1, 4, 5], []) #== [1, 4, 5]