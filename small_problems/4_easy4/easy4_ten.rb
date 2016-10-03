# easy4_ten.rb

# Write a method that takes an integer, and converts it to a string representation.

# You may not use any of the standard conversion methods available in Ruby, such as 
# Integer#to_s, String(), Kernel#format, etc. You may, however, use integer_to_string 
# from the previous exercise.

def integer_to_string(num)
  results = []
  results_string = ''
  results << num / 1000 if num / 1000 != 0 
  results << num % 1000 / 100 if num / 100 != 0
  results << num % 100 / 10 if num / 10 != 0
  results << num % 10

  results.join("")
end

def signed_integer_to_string(num)
  if num > 0
    integer_to_string(num).prepend("+")
  elsif num == 0
    integer_to_string(num)
  else
    integer_to_string(-num).prepend("-")
  end
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'