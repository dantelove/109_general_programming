# easy4_ten.rb

# In the previous exercise, you developed a method that converts non-negative 
# numbers to strings. In this exercise, you're going to extend that method by 
# adding the ability to represent negative numbers as well.

# Write a method that takes an integer, and converts it to a string 
# representation.

# You may not use any of the standard conversion methods available in Ruby, 
# such as Integer#to_s, String(), Kernel#format, etc. You may, however, use 
# integer_to_string from the previous exercise.

def integer_to_string(num)
  n = 100
  results = []

  3.times do
    integer, num = num.divmod(n)
    results << integer unless results.first == 0
    n /= 10
  end

  results.join
end

def signed_integer_to_string(num)
  return "+" + integer_to_string(num) if num.positive?
  return "-" + integer_to_string(num.abs) if num.negative?
  integer_to_string(num)
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'