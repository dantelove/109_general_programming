# easy4_9.rb

# Write a method that takes a positive integer or zero, and converts it to a 
# string representation.

# You may not use any of the standard conversion methods available in Ruby, 
# such as Integer#to_s, String(), Kernel#format, etc. Your method should do 
# this the old-fashioned way and construct the string by analyzing and 
# manipulating the number.

NUMBERS = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]

def integer_to_string(num)
  results = []
  n = 1000
  
  4.times do
    num, remainder = num.divmod(n)
    results << num if results[0].nil? || !results[0].zero?
    num = remainder
    n /= 10
  end
  
  results.map { |x| NUMBERS[x] }.join
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'