#easy6_7.rb

# Write a method that takes an Array as an argument, and returns two 
# Arrays that contain the first half and second half of the original 
# Array, respectively. If the original array contains an odd number of 
# elements, the middle element should be placed in the first half Array.

def halvsies(array)
  array1 = []
  array2 = []
  n = 0
  array.size.odd? ? m = 1 : m = 0

  (array.size / 2 + m).times do
    array1 << array[n]
    n += 1
  end

  (array.size / 2).times do
    array2 << array[n]
    n += 1
  end

  [array1, array2]
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]