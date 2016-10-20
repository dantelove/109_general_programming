# easy1_2.rb

# Write a method that takes one argument in the form of an integer or a float; 
# this argument may be either positive or negative. This method should check 
# if a number is odd, returning true if its absolute value is odd. Floats 
# should only return true if the number is equal to its integer part 
# and the integer is odd.

# LS Solution

# def is_odd?(number)
#   number % 2 == 1
# end

def is_odd?(num)
  num.abs.to_i % 2 != 0 && num.to_i == num
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(7.1)  # => false
puts is_odd?(-5.0) # => true