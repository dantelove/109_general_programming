# beginning_ruby_5_1_ls.rb

# Instructions:

# Write a method that takes an array of strings, and returns an array of
# string values, except with the vowels removed.

#--------------------------
# **input** 
# Write a list of words: green, yellow, black, white

# **output**
# List of modified words are: grn, yllw, bck, wht

#This is the solution from the walk through

VOWELS = ["a", "e", "i", "o", "u"]

words_array = ["green", "yellow", "black", "white"]

def remove_vowels(array)
  array.map do |string|
    chars = string.split("")
    VOWELS.each { |vowel| chars.delete(vowel) }
    chars.join("")
  end
end

p remove_vowels(words_array)