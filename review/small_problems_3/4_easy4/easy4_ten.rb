# easy4_ten.rb

# In the previous exercise, you developed a method that converts non-negative 
# numbers to strings. In this exercise, you're going to extend that method by 
# adding the ability to represent negative numbers as well.

# Write a method that takes an integer, and converts it to a string 
# representation.

# You may not use any of the standard conversion methods available in Ruby, 
# such as Integer#to_s, String(), Kernel#format, etc. You may, however, 
# use integer_to_string from the previous exercise.

NUMBERS = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]

def integer_to_string(num)
  results = []
  n = 0
  m = 0
  
  if num >= 1000
    n = 1000
    m = 4
  elsif num >= 100 && num < 1000
    n = 100
    m = 3
  elsif num >= 10 && num < 100
    n = 10
    m = 2
  elsif num >= 0 && num < 10
    n = 1
    m = 1
  end
  
  m.times do
    num, remainder = num.divmod(n)
    results << num if results[0].nil? || !results[0].zero?
    num = remainder
    n /= 10
  end
  
  results.map { |x| NUMBERS[x] }.join
end

def signed_integer_to_string(num)
  if num.negative?
    num = num.abs
    "-" + integer_to_string(num)
  elsif num.positive?
    "+" + integer_to_string(num)
  else
    integer_to_string(num)
  end
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'
