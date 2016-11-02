# easy3_2.rb

# Write a program that prompts the user for two positive integers, and 
# then prints the results of the following operations on those two numbers: 
# addition, subtraction, product, quotient, remainder, and power. Do 
# not worry about validating the input.

def prompt(string)
  puts ">> #{string}"
end

operations = [:+, :-, :*, :/, :%, :**]

prompt "Enter the first number:"
first_num = gets.chomp.to_i

prompt "Enter the second number:"
second_num = gets.chomp.to_i

operations.each do |operation|
  prompt "#{first_num} #{operation} #{second_num} " +
         "= #{[first_num, second_num].inject(operation)}"
end