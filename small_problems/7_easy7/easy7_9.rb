# easy7_9.rb

# Write a method that takes two Array arguments in which each Array contains 
# a list of numbers, and returns a new Array that contains the product of 
# every pair of numbers that can be formed between the elements of the two Arrays. 
# The results should be sorted by increasing value.

# You may assume that neither argument is an empty Array.

def multiply_all_pairs(array1, array2)
  result = []
  n = 0
  
  if array1.size > array2.size
    array2.size.times do 
    result << array1.map { |num| num*array2[n] }
    n += 1
    end
  else 
    array1.size.times do 
    result << array2.map { |num| num*array1[n] }
    n += 1
    end
  end

  result.flatten.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]