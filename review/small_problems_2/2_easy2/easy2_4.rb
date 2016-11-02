# easy2_4.rb

# Build a program that displays when the user will retire and how many 
# years she has to work till retirement.

def prompt(string)
  puts ">> #{string}"
end

prompt "What is your age?"
age = gets.chomp.to_i

prompt "At what age would you like to retire?"
retirement_age = gets.chomp.to_i

year = Time.new.year
years_until_retirement = retirement_age - age
retirement_year = year + years_until_retirement

prompt "It's #{year}. You will retire in #{retirement_year}."
prompt "You only have #{years_until_retirement} years of work to go!"