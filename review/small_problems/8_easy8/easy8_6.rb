#easy8_6.rb

# Write a method that takes two arguments: the first is the starting number, 
# and the second is the ending number. Print out all numbers between the 
# two numbers, except if a number is divisible by 3, print "Fizz", if a 
# number is divisible by 5, print "Buzz", and finally if a number is 
# divisible by 3 and 5, print "FizzBuzz".

def fizzbuzz(num1, num2)
  results = []

  (num1..num2).each do |x|
    if x % 3 == 0 && x % 5 == 0
      results << "FizzBuzz"
    elsif x % 3 == 0
      results << "Fizz"
    elsif x % 5 == 0
      results << "Buzz"
    else
      results << x
    end
  end

  p results.join(", ")
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz