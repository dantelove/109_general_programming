# easy4_9.rb

# Write a method that takes a positive integer or zero, and converts it to a 
# string representation.

# You may not use any of the standard conversion methods available in Ruby, 
# such as Integer#to_s, String(), Kernel#format, etc. Your method should do
# this the old-fashioned way and construct the string by analyzing and 
# manipulating the number.

STRINGS = {4=> "4"}

def integer_to_string(num)
  results = []
  results_string = ''
  results << num / 1000 if num / 1000 != 0 
  results << num % 1000 / 100 if num / 100 != 0
  results << num % 100 / 10 if num / 10 != 0
  results << num % 10

  results.join("")
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'