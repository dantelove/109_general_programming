# watch_others_code1_2.rb

# Write a program that asks the user to enter an interger greater than 0,
# then asks if the user wants to determine the sum or product of all numbers
# between 1 and the number.

# Example

# Please enter a integer greater than 0:
# 5
# Enter 's' to compute the sum, 'p' to compute the product.
# The sum of the integers between 1 and 5 is 15.

# This is my attempt before watching the walkthrough.

def prompt(string)
  puts ">> #{string}"
end

def greater_than_zero?(num)
  return true if num > 0
  return false
end

prompt("Please enter an integer greater than 0.")
integer = gets.chomp.to_i

if greater_than_zero?(integer)
  prompt("Enter 's' to compute the sum, 'p' to compute the product.")
else
  prompt("Please enter an integer greater than zero.")
end

compute = gets.chomp.downcase

sum = 0
case compute
when 's'
  (1..integer).each do |x|
    sum += x
  end
  prompt "The sum of the integers between 1 and #{integer} is #{sum}."
when 'p'
  sum = 1
  (1..integer).each do |x|
    sum *= x
  end
  prompt "The products of the integers between 1 and #{integer} is #{sum}."
else
  prompt("Please enter 's' or 'p'.")
end