# easy3_2.rb

# Write a program that prompts the user for two positive integers, and then 
# prints the results of the following operations on those two numbers: addition, 
# subtraction, product, quotient, remainder, and power. Do not worry about 
# validating the input.

def prompt(string)
  puts ">> #{string}"
end

operations = [:+, :-, :*, :/, :%, :**]

prompt "Enter the first number:"
first_number = gets.to_i

prompt "Enter the second number:"
second_number = gets.to_i

operations.each do |x| 
  prompt "#{first_number} #{x} #{second_number} = " +
         "#{[first_number, second_number].inject(x)}"
end



