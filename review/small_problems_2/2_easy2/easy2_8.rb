# easy2_8.rb

# Write a program that asks the user to enter an integer greater than 0, 
# then asks if the user wants to determine the sum or product of all 
# numbers between 1 and the entered integer.

def prompt(string)
  puts ">> #{string}"
end

prompt "Please enter an integer greater than 0:"
integer = gets.chomp.to_i

prompt "Enter 's' to compute the sum, 'p' to compute the product."
operation = gets.chomp.downcase

case operation
when 's'
  sum = (1..integer).inject(:+)
  prompt "The sum of the integers between 1 and #{integer} is #{sum}."
when 'p'
  product = (1..integer).inject(:*)
  prompt "The product of the integers between 1 and #{integer} is #{product}."
end

