# easy6_7.rb

# Write a method that takes an Array as an argument, and returns two Arrays 
# that contain the first half and second half of the original Array, respectively. 
# If the original array contains an odd number of elements, the middle element 
# should be placed in the first half Array.

def halvsies(array)
  if array.size.odd?
    new_array1 = array.take(array.size/2 + 1)
  else
    new_array1 = array.take(array.size/2)
  end

  new_array2 = array.last(array.size/2)

  [new_array1, new_array2]
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]