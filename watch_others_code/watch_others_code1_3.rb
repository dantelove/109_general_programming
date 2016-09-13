# watch_others_code1_3

# Write a method that combines two Arrays passed in as arguments, and returns
# a new Array that contains all elements from both Array arguments, with the 
# elements taken in alternatin.

# You may assume that both input Arrays are non-empty, and that they have the
# same number of elements.

# Example
# interweave([1, 2, 3], ['a', 'b', 'c']) #=> [1, 'a', 2, 'b', 3, 'c']

# This is my attempt before watching the walkthrough.

def interweave(array1, array2)
  interwoven_array = []
  array1.count.times do
  interwoven_array << array1.shift
  interwoven_array << array2.shift
  end
  interwoven_array
end

first_array = [1, 2, 3]
second_array = ['a', 'b', 'c']

p interweave(first_array, second_array)