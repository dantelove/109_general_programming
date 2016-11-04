# med1_3.rb

# If you take a number like 735291, and rotate it to the left, you get 
# 352917. If you now keep the first digit fixed in place, and rotate the 
# remaining digits, you get 329175. Keep the first 2 digits fixed in place and 
# rotate again to 321759. Keep the first 3 digits fixed in place and rotate 
# again to get 321597. Finally, keep the first 4 digits fixed in place and 
# rotate the final 2 digits to get 321579. The resulting number is called 
# the maximum rotation of the original number.

# Write a method that takes an integer as argument, and returns the maximum 
# rotation of that argument. You can (and probably should) use the 
# rotate_rightmost_digits method from the previous exercise.

def rotate_array(array)
  array[1..-1] + [array[0]] 
end

def rotate_rightmost_digits(num1, num2)
  results = num1.to_s.chars
  results.pop(num2)
  results += rotate_array(num1.to_s.chars.last(num2))
  results.join.to_i
end

def max_rotation(num)
  results = []

  array = num.to_s.chars

  loop do
    array = rotate_array(array)
    results << array.shift
    break if array.empty?
  end

  results.join.to_i
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845