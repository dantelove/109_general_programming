# beginning_ruby_4_2.rb

# Write a method that takes two arguments: the first is the
# starting number and the second is the ending number. Print
# out all numbers between the two numbers, except if a number
# is divisible 3 print "Fizz", is a number is divisible by 5,
# print "Buzz", and finally if a number is divisible by 3 and 5,
# print "FizzBuzz".

#Exercise 2

# this is my attempt before watching the video walkthrough.

def fizzbuzz(num1, num2)
    numbers = num1..num2
    fizzbuzz_array = []
    numbers.each do |x|
        case
        when x % 3 == 0 && x % 5 == 0
            fizzbuzz_array << "FizzBuzz"
        when x % 3 == 0
            fizzbuzz_array << "Fizz"
        when x % 5 == 0
            fizzbuzz_array << "Buzz"
        else
            fizzbuzz_array << x
        end
    end

    p fizzbuzz_array.join(", ")
end

fizzbuzz(1, 15)