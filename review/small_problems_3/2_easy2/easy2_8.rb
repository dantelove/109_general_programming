# easy2_8.rb

# Write a program that asks the user to enter an integer greater than 0, then 
# asks if the user wants to determine the sum or product of all numbers between 
# 1 and the entered integer.

def prompt(string)
  puts ">> #{string}"
end

prompt "Please enter an integer greater than 0."
integer = gets.to_i

prompt "Enter 's' to compute the sum, and 'p' to compute the product."
operation = gets.chomp

case operation
when 's'
  sum = (1..integer).to_a.inject(:+)
  prompt "The sum of the numbers between 1 and #{integer} is #{sum}."
when 'p' 
  product = (1..integer).to_a.inject(:*)
  prompt "The product of the numbers between 1 and #{integer} is #{product}."
end
