# easy2_4.rb

# Build a program that displays when the user will retire and how many years 
# she has to work till retirement.

def prompt(msg)
  puts ">> #{msg}"
end

prompt "What is your age?"
age = gets.chomp.to_i

prompt "At what age will you retire?"
retirement_age = gets.chomp.to_i

year = Time.now.year
years_until_retirement = retirement_age - age

prompt "It's #{year}. You will retire in #{years_until_retirement + year}."
prompt "You have only #{years_until_retirement} years of work to go!"