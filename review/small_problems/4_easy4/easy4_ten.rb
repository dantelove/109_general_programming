#easy4_ten.rb

# In the previous exercise, you developed a method that converts non-negative 
# numbers to strings. In this exercise, you're going to extend that method by 
# adding the ability to represent negative numbers as well.

# Write a method that takes an integer, and converts it to a string 
# representation.

# You may not use any of the standard conversion methods available in Ruby, 
# such as Integer#to_s, String(), Kernel#format, etc. You may, however, 
# use integer_to_string from the previous exercise.

NUMBERS = {0=> "0", 1=> "1", 2=> "2", 3=> "3", 4=> "4", 5=>"5"}

def integer_to_string(num)
  results = []
  results << num / 1000 unless num / 1000 == 0
  results << num % 1000 / 100 unless num / 100 == 0
  results << num % 100 / 10 unless num / 10 == 0
  results << num % 10
  results.map { |x| NUMBERS[x] }.join
end

def signed_integer_to_string(num)
  if num.positive?
    "+" + integer_to_string(num)
  elsif num.negative?
    num = num.abs
    "-" + integer_to_string(num)
  else
    integer_to_string(num)
  end
end

p signed_integer_to_string(4321)  == '+4321'
p signed_integer_to_string(-123)  == '-123'
p signed_integer_to_string(0)  == '0'