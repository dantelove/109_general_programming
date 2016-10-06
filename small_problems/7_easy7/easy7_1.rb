# easy7_1.rb

# Write a method that combines two Arrays passed in as arguments, and returns a 
# new Array that contains all elements from both Array arguments, with the elements 
# taken in alternation.

def interleave(array1, array2)
  array1.zip(array2).flatten
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']