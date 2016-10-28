# med1_9.rb

# Rewrite your recursive fibonacci method so that it 
# computes its results without recursion.

def fibonacci(num)
  array = [1,1]
  n = 0

  num.times do
    array << array[n] + array[n + 1]
    n += 1
  end

  array[n - 1]
end

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....p 8285979669707537501