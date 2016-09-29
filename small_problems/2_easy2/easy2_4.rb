# easy2_4.rb

# Build a program that displays when the user will retire 
# and how many years she has to work till retirement.

def prompt(msg)
  puts ">> #{msg}"
end

prompt "What is your age?"
age = gets.chomp.to_i

prompt "At what age would you like to retire?"
reitrement_age = gets.chomp.to_i

current_year = 2016
work_years_left = reitrement_age - age
retirement_year = current_year + work_years_left

prompt "It's #{current_year}. You will retire in #{retirement_year}."
prompt "You have only #{work_years_left} years of work to go!"