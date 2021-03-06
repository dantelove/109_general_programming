# easy6_5.rb

# Write a method that takes an Array, and returns a new Array with the 
# elements of the original list in reverse order. Do not modify the 
# original list.

def reverse(array)
  results = []
  n = -1
  
  array.size.times do
    results << array[n]
    n -= 1
  end

  results
end

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b c d e)) == %w(e d c b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

list = [1, 2, 3]                      # => [1, 2, 3]
new_list = reverse(list)              # => [3, 2, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 2, 3]                     # => true
p new_list == [3, 2, 1]                 # => true


