# adv1_7.rb

# Find and fix the bug, then explain why the buggy program printed the 
# results it did.

def my_method(array)
  if array.size == 1
    [7 * array.first]
  elsif array.size > 1
    array.map do |value|
      value * value
    end
  else
    []
  end
end

p my_method([]) == []
p my_method([3]) == [21]
p my_method([3, 4]) == [9, 16]
p my_method([5, 6, 7]) == [25, 36, 49]

# The way the solution was set up before the 'else' condition never came into
# play because an array can only be empty or not empty - there is nothing 'else'.

