# beginning_ruby_5_3.rb

# Write a method that takes two numbers. It should print out all primes between
# the two numbers. Don't use Ruby's prime clase.

# find_prime (3, 10)

# => 3, 5, 7

#This is my attempt before watching the walkthrough.

def find_prime (num1, num2)
  range_array = (num1..num2).to_a

  range_array.select do |number|
    (number % 2 != 0 ||
     number == 2) &&
    (number % 3 != 0 ||
     number == 3) &&
    (number % 5 != 0 ||
      number == 5) &&
    (number % 7 != 0 ||
      number == 7)
  end
end

p find_prime(3, 10)
puts 
p find_prime(3, 20)
puts
p find_prime(3, 100)