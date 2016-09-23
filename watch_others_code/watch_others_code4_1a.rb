# watch_others_code4_1a.rb

# Write a metod that takes a single String argument and returns
# a new string that contains the original value of the argument,
# but the first letter of every word is now capitalized.

# You may assume that words are any sequence of non-blank character,
# and that only the first character needs to be considered.

# This is my attempt before watching the walkthrough

# Examples:

def word_cap(string)
  string_array = string.split(" ")
  result = []

  string_array.each do |word|
    result << word.capitalize
  end
    
  result.join(" ")
end

puts word_cap('four score and seven') #=> Four Score and Seven
puts word_cap('the javascript language') #=> The JavaScript Language
puts word_cap('this is a "quoted" word') #=> This Is A "quoted" Word