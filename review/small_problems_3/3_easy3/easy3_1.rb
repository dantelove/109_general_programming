# easy3_1.rb

# Write a program that solicits 6 numbers from the user, then prints a message 
# that describes whether or not the 6th number appears amongs the first 5 numbers.

def prompt(string)
  puts ">> #{string}"
end

n = 1
results = []

5.times do 
  prompt "Enter number #{n}:"
  results << gets.chomp
  n += 1
end

prompt "Enter last number:"
search = gets.chomp

if results.include?(search)
  prompt "The number #{search} appears in #{results}."
else
  prompt "The number #{search} does not appear in #{results}."
end
