# beginning_ruby_5_1.rb

# Instructions:

# Write a method that takes an array of strings, and returns an array of
# string values, except with the vowels removed.

#--------------------------
# **input** 
# Write a list of words: green, yellow, black, white

# **output**
# List of modified words are: grn, yllw, bck, wht

#This is my attempt before watching the walkthrough

words_array = ["green", "yellow", "black", "white"]


def remove_vowels(array)
  split_word = []

  array.each do |word|
    split_word << word.split("")
  end

  split_word.each do |letter|
    letter.delete_if do |x| 
      x == "a" ||
      x == "e" ||
      x == "i" ||
      x == "o" ||
      x == "u"
    end
  end

  split_word
end

remove_vowels(words_array)