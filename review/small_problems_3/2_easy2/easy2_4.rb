# easy2_4.rb

# Build a program that displays when the user will retire and how many 
# years she has to work till retirement.

def prompt(string)
  puts ">> #{string}"
end

prompt "What is your age?"
age = gets.to_i

prompt "At what age would you like to retire?"
retirement_age = gets.to_i

years_until_retirment = retirement_age - age

year = Time.now.year

retirement_year = year + years_until_retirment

prompt "It's #{year} now. You will retire in #{retirement_year}."
prompt "Only #{years_until_retirment} years of work to go!"

