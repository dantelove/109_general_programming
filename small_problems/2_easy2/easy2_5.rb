# easy2_5.rb

# Write a program that will ask for user's name. The program 
# will then greet the user. If the user writes "name!" then 
# the computer yells back to the user.

def prompt(msg)
  puts ">> #{msg}"
end

prompt "What is your name?"
name = gets.chomp

if name.chars.last == "!"
  name = name.chomp("!")
  prompt "Hello #{name}. Why are you screaming?".upcase
else
  prompt "Hello #{name}."
end