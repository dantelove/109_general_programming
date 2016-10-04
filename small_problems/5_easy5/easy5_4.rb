# easy5_4.rb

# Given a string of words separated by spaces, write a method that takes this string 
# of words and returns a string in which the first and last letters of every word is
# swapped.

# You may assume that every word contains at least one letter, and that the string
# will always contain at least one word. You may also assume that each string contains 
# nothing but words and spaces

require 'pry'

def swap(string)
  split_string_array = string.split(" ")
  results = []

  split_string_array.each do |word|
    case 
    when word.size == 1
      results << word
    when word.size == 2
      word = word.chars
      new_first_letter = word.pop
      word.unshift(new_first_letter)
      word = word.join("")
      results << word
    else
      word = word.chars
      new_first_letter = word.pop
      new_last_letter = word.shift
      word.unshift(new_first_letter)
      word << new_last_letter
      word = word.join("")
      results << word
    end
  end

  results.join(" ")
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'
