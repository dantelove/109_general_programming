# easy3_3.rb

# Write a program that will ask a user for an input of a word or multiple 
# words and give back the number of characters. Spaces should not be counted 
# as a character.

def prompt(msg)
  puts ">> #{msg}"
end

prompt "Please write a word or multiple words:"
string = gets.chomp

count = string.gsub(" ", "").length

prompt "There are #{count} characters in \"#{string}\"."