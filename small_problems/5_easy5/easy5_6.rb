# easy5_6.rb

# Write a method that takes a string with one or more space separated words and 
# returns a hash that shows the number of words of different sizes.

# Words consist of any string of characters that do not include a space.

def word_sizes(string)
  split_string_array = string.split(" ")
  keys = []
  results = {}

  split_string_array.each do |word|
    keys << word.length
  end

  keys.each do |key|
    results[key] = keys.count(key)
  end

  results.sort_by {|k,v| k}.to_h
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}