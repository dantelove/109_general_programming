#easy7_8.rb

# Write a method that takes two Array arguments in which each Array 
# contains a list of numbers, and returns a new Array that contains the 
# product of each pair of numbers from the arguments that have the same 
# index. You may assume that the arguments contain the same number of elements.

def multiply_list(array1, array2)
  n = 0
  results = []

  array1.size.times do
    results << array1[n] * array2[n]
    n += 1
  end

  results
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]