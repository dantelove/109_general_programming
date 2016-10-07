# easy8_6.rb

# Write a method that takes two arguments: the first is the starting number, and 
# the second is the ending number. Print out all numbers between the two numbers, 
# except if a number is divisible by 3, print "Fizz", if a number is divisible by 
# 5, print "Buzz", and finally if a number is divisible by 3 and 5, print "FizzBuzz".

def fizzbuzz(num1, num2)
  results =   (num1..num2).to_a.map do |num|
                if num % 3 == 0 && num % 5 == 0
                  "FizzBuzz"
                elsif num % 3 == 0
                  "Fizz"
                elsif num % 5 == 0
                  "Buzz"
                else
                  num
                end
              end
  results.join(", ")
end

p fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz