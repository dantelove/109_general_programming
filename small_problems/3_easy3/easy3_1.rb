# easy3_1.rb

# Write a program that solicits 6 numbers from the user, then prints 
# a message that describes whether or not the 6th number appears amongs 
# the first 5 numbers.

def prompt(msg)
  puts ">> #{msg}"
end

count = 0
results = []
number = 0

loop do 
  prompt "Enter number #{count + 1}:"
  number = gets.to_i
  results << number

  break if count == 5
  count += 1
end

results.pop

if results.include?(number)
  puts "The number #{number} appears in #{results}."
else
  puts "The number #{number} does not appear in #{results}."
end