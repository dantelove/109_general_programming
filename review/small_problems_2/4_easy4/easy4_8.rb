# easy4_8.rb

# Write a method that takes a String of digits, and returns the appropriate 
# number as an integer. The String may have a leading + or - sign; if the 
# first character is a +, your method should return a positive number; if 
# it is a -, your method should return a negative number. If no sign is given, 
# you should return a positive number.

# You may assume the string will always contain a valid number.

# You may not use any of the standard conversion methods available in Ruby, 
# such as String#to_i, Integer(), etc. You may, however, use the string_to_integer 
# method from the previous lesson.


INTEGERS = ["0", "1", "2", "3", "4", "5", "6", "7"]

def string_to_integer(string)
  array = string.chars.map {|x| INTEGERS.index(x) }.reverse

  array.each_with_index.map { |x, idx| x*(10**idx) }.inject(:+)
end

def string_to_signed_integer(string)
  case 
  when string.start_with?("-")
    string = string.delete("-")
    -string_to_integer(string)
  when string.start_with?("+")
    string = string.delete("+")
    string_to_integer(string)
  else
    string_to_integer(string)
  end
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100