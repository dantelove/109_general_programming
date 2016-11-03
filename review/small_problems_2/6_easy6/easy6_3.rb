# easy6_3.rb

# Write a method that calculates and returns the index of the first Fibonacci 
# number that has the number of digits specified as an argument. (The first 
# Fibonacci number has index 1.)

def find_fibonacci_index_by_length(num)
  fibonacci = [1,1]
  n = 2

  loop do
    break if fibonacci.last.to_s.length == num
    fibonacci << fibonacci[n - 1] + fibonacci[n - 2]
    n += 1
  end

  n
end

p find_fibonacci_index_by_length(2) == 7
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847