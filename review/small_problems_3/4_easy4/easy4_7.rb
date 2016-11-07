# easy4_7.rb

# Write a method that takes a String of digits, and returns the appropriate 
# number as an integer. You may not use any of the methods mentioned above.

NUMBERS = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]

def string_to_integer(string)
  string = string.chars.map { |x| NUMBERS.index(x) }
  string.reverse.each_with_index.map { |x, idx| x*(10**idx) }.inject(:+)
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570