#easy4_7.rb

# Write a method that takes a String of digits, and returns the appropriate 
# number as an integer. You may not use any of the methods mentioned above.

# For now, do not worry about leading + or - signs, nor should you worry about 
#   invalid characters; assume all characters will be numeric.

# You may not use any of the standard conversion methods available in Ruby, 
# such as String#to_i, Integer(), etc. Your method should do this the 
# old-fashioned way and calculate the result by analyzing the characters 
# in the string.

NUMBERS = {
          "0"=>0, "1"=> 1, "2"=> 2, "3"=> 3, "4"=> 4, "5"=> 5, "6"=> 6, 
          "7"=>7, "8"=> 8, "9"=> 9
          }

def string_to_integer(string)
  results = []
  array = []
  string.chars.each {|x| results << NUMBERS[x]}
  results.reverse.each_with_index.map {|x, idx| array << x*10**idx }
  array.inject(:+)
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570