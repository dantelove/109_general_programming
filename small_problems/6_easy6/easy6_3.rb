# easy6_3.rb

# The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21, ...) 
# such that the first 2 numbers are 1 by definition, and each subsequent number 
# is the sum of the two previous numbers.

# Write a method that calculates and returns the index of the first Fibonacci 
# number that has the number of digits specified as an argument. (The first 
# Fibonacci number has index 1.)

def fibonacci
  Enumerator.new do |y|
    a = b = 1

    loop do
      y << a
      a, b = b, a + b
    end
  end
end

def find_fibonacci_index_by_length(num)
  index = fibonacci.lazy.with_index.select { |n, i| n.to_s.length == num }.first(1)
  index.flatten[1] + 1
end

p find_fibonacci_index_by_length(2) == 7
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847