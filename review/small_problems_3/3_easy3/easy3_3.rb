# easy3_3.rb

# Write a program that will ask a user for an input of a word or multiple words 
# and give back the number of characters. Spaces should not be counted as 
# a character.

def prompt(string)
  puts ">> #{string}"
end

prompt "Please write word or multiple words:"
words = gets.chomp

characters = words.delete(' ').length

prompt "There are #{characters} characters in #{words}."