# med1_2.rb

# Write a method that can rotate the last n digits of a number. For example:

def rotate_array(array)
  results = []
  results << array
  results = results.flatten
  last = results.shift 
  results << last
end

def rotate_rightmost_digits(num1, num2)
  num_array = num1.to_s.chars

  last = num_array.slice!(-num2..-1)
  last = rotate_array(last)

  (num_array + last).join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917