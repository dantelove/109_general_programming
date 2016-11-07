# easy8_6.rb

# Write a method that takes two arguments: the first is the starting number, 
# and the second is the ending number. Print out all numbers between the two 
# numbers, except if a number is divisible by 3, print "Fizz", if a number is 
# divisible by 5, print "Buzz", and finally if a number is divisible by 3 
# and 5, print "FizzBuzz".

def fizzbuzz(num1, num2)
  fizzbuzz_array =   (num1..num2).to_a.map do |x|
                        if x % 3 == 0 && x % 5 == 0
                          "FizzBuzz"
                        elsif x % 3 == 0
                          "Fizz"
                        elsif x % 5 == 0
                          "Buzz"
                        else
                          x
                        end
                      end
                      
  puts fizzbuzz_array.join(", ")
end

fizzbuzz(1, 15)