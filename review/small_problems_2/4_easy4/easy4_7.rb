# easy4_7.rb

# Write a method that takes a String of digits, and returns the appropriate 
# number as an integer. You may not use any of the methods mentioned above.

INTEGERS = ["0", "1", "2", "3", "4", "5", "6", "7"]

def string_to_integer(string)
  array = string.chars.map {|x| INTEGERS.index(x) }.reverse

  array.each_with_index.map { |x, idx| x*(10**idx) }.inject(:+)
end

p string_to_integer('4321') #== 4321
p string_to_integer('570') #== 570