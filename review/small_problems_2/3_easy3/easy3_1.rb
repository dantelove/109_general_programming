# easy3_1.rb

# Write a program that solicits 6 numbers from the user, then prints a 
# message that describes whether or not the 6th number appears amongs 
# the first 5 numbers.

def prompt(string)
  puts ">> #{string}"
end

numbers_array = []

number = 0

count = 1

5.times do 
  prompt "Enter number #{count}:"
  number = gets.chomp.to_i
  numbers_array << number
  count += 1
end

prompt "Enter the last number:"
last_number = gets.chomp.to_i

if numbers_array.include?(last_number)
  prompt "The number #{last_number} appears in #{numbers_array}."
else
  prompt "The number #{last_number} does not appear in #{numbers_array}."
end