# easy6_4.rb

# Write a method that takes an Array as an argument, and reverses its elements 
# in place; that is, mutate the Array passed in to this method. The return 
# value should be the same Array object.

def reverser(array)
  new_array = []

  array.size.times do
    new_array << array.pop
  end

  new_array.size.times do
    array << new_array.shift
  end

  array
end

list = [1,2,3,4,5]
result = reverser(list)
p list #== [5,4,3,2,1]
p result
p list.object_id == result.object_id