# med1_ten.rb

# In the previous exercise, we developed a procedural method for computing the 
# value of the nth Fibonacci numbers. This method was really fast, computing the 
# 0899 digit 100,001st Fibonacci sequence almost instantly.

# In this exercise, you are going to compute a method that returns the last digit 
# of the nth Fibonacci number.

def fibonacci_last(num)
  results = [1,1]
  n = 2

  (num - 2).times do 
    results << results[n - 1] + results[n - 2]
    n += 1
  end

  number = results.pop

  number.to_s.chars.pop.to_i
end

p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
# p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
# p fibonacci_last(123456789) # -> 4