# easy3_1.rb

# Write a program that solicits 6 numbers from the user, then prints a message 
# that describes whether or not the 6th number appears amongs the first 5 
# numbers.


def prompt(msg)
  puts ">> #{msg}"
end

ORDER = ["1st", "2nd", "3rd", "4th", "5th"]

results = []

ORDER.each do |order|
  prompt "Enter the #{order} number:"
  results << gets.chomp.to_i
end

prompt "Enter the last number:"
last_num = gets.chomp.to_i

if results.include?(last_num)
  prompt "The number #{last_num} appears in #{results}."
else
  prompt "The number #{last_num} does not appear in #{results}."
end
