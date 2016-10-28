# med1_8.rb

# Write a recursive method that computes the nth Fibonacci number, 
# where nth is an argument to the method.

def fibonacci(num)
  array = [1,1]
  n = 0

  num.times do
    array << array[n] + array[n + 1]
    n += 1
  end

  array[n - 1]
end

p fibonacci(1) #== 1
p fibonacci(2) #== 1
p fibonacci(3) #== 2
p fibonacci(4) #== 3
p fibonacci(5) #== 5
p fibonacci(12) #== 144
p fibonacci(20) #== 6765