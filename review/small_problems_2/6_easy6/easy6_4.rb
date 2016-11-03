# easy6_4.rb

# Write a method that takes an Array as an argument, and reverses its elements 
# in place; that is, mutate the Array passed in to this method. The return 
# value should be the same Array object.

# You may not use Array#reverse or Array#reverse!.

def reverse!(array)
  m = array.size - 1

loop do
  break if m == 0
  n = -1

  m.times do
    array[n], array[n - 1] = array[n - 1], array[n]
    n -= 1
  end

  m -= 1
end

  array
end 

list = [1,2,3,4]
result = reverse!(list) # => [4,3,2,1]
p list == [4, 3, 2, 1]
p list.object_id == result.object_id

list = %w(a b c d e)
reverse!(list) # => ["e", "d", "c", "b", "a"]
p list == ["e", "d", "c", "b", "a"]

list = ['abc']
reverse!(list) # => ["abc"]
p list == ["abc"]