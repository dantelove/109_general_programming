# easy4_9.rb

# Write a method that takes a positive integer or zero, and converts it to a 
# string representation.

# You may not use any of the standard conversion methods available in Ruby, such 
# as Integer#to_s, String(), Kernel#format, etc. Your method should do this the 
# old-fashioned way and construct the string by analyzing and manipulating the 
# number.

def integer_to_string(num)
  n = 1000
  results = []

  4.times do
    integer, num = num.divmod(n)
    results << integer unless results.first == 0
    n /= 10
  end

  results.join
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'