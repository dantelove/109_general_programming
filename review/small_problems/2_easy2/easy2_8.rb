# easy2_8.rb

# Write a program that asks the user to enter an integer greater than 0, 
# then asks if the user wants to determine the sum or product of all numbers 
# between 1 and the entered integer.

def prompt(msg)
  puts ">> #{msg}"
end

prompt "Please enter an integer greater than 0:"
integer = gets.chomp.to_i

prompt "Enter 's' to compute the sum, 'p' to computer the product."
operation = gets.chomp.downcase

case operation
when 's'
  prompt "The sum of the integers between 1 and #{integer} " +
         "is #{(1..integer).inject(:+)}."
when 'p' 
  prompt "The product of the integers between 1 and #{integer} " +
         "#{(1..integer).inject(:*)}."
else 
  prompt "You did not enter 's' or 'p'."
end