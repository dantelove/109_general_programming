# med1_2.rb

# Write a method that can rotate the last n digits of a number.

# Note that rotating just 1 digit results in the original number being 
# returned.

# You may use the rotate_array method from the previous exercise if you 
# want. (Recommended!)

# You may assume that n is always a positive integer.

def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(num1, num2)
  results = num1.to_s.chars
  results.pop(num2)
  results += rotate_array(num1.to_s.chars.last(num2))
  results.join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917