# easy3_2.rb

# Write a program that prompts the user for two positive integers, and then 
# prints the results of the following operations on those two numbers: 
# addition, subtraction, product, quotient, remainder, and power. Do not worry 
# about validating the input.

def prompt(msg)
  puts ">> #{msg}"
end

def addition(num1, num2)
  num1 + num2
end

def subtraction(num1, num2)
  num1 - num2
end

def product(num1, num2)
  num1 * num2
end

def quotient(num1, num2)
  num1 / num2
end

def remainder(num1, num2)
  num1 % num2
end

def power(num1, num2)
  num1 ** num2
end

def display_all_operations(num1, num2)
  prompt "#{num1} + #{num2} = #{addition(num1, num2)}"
  prompt "#{num1} - #{num2} = #{subtraction(num1, num2)}"
  prompt "#{num1} * #{num2} = #{product(num1, num2)}"
  prompt "#{num1} / #{num2} = #{quotient(num1, num2)}"
  prompt "#{num1} % #{num2} = #{remainder(num1, num2)}"
  prompt "#{num1} ** #{num2} = #{power(num1, num2)}"
end

prompt "Enter the first number:"
first_num = gets.to_i

prompt "Enter the second number:"
second_num = gets.to_i

display_all_operations(first_num,second_num)