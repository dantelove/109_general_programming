# med1_9.rb

# Rewrite your recursive fibonacci method so that it computes its results 
# without recursion.

def fibonacci(num)
  results = [1,1]
  n = 2

  (num - 2).times do 
    results << results[n - 1] + results[n - 2]
    n += 1
  end

  results.pop
end

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501