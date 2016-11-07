# easy4_8.rb

# In the previous exercise, you developed a method that converts simple 
# numeric strings to Integers. In this exercise, you're going to extend 
# that method to work with signed numbers.

# Write a method that takes a String of digits, and returns the appropriate 
# number as an integer. The String may have a leading + or - sign; if the 
# first character is a +, your method should return a positive number; 
# if it is a -, your method should return a negative number. If no sign 
# is given, you should return a positive number.

# You may assume the string will always contain a valid number.

# You may not use any of the standard conversion methods available in Ruby, 
# such as String#to_i, Integer(), etc. You may, however, use the 
# string_to_integer method from the previous lesson.

NUMBERS = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]

def string_to_integer(string)
  string = string.chars.map { |x| NUMBERS.index(x) }
  string.reverse.each_with_index.map { |x, idx| x*(10**idx) }.inject(:+)
end

def string_to_signed_integer(string)
  if string.start_with?("+")
    string.delete!('+')
    string_to_integer(string)
  elsif string.start_with?("-")
    string.delete!('-')
    -string_to_integer(string)
  else
    string_to_integer(string)
  end
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100