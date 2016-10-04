# ruby5_7.rb

# Modify the word_sizes method from the previous exercise to exclude non-letters 
# when determining word size. For instance, the length of "it's" is 3, not 4.

def word_sizes(string)  
  split_string_array = string.split(" ").each do |word|
                         word.gsub!(/\W+/, "")
                       end

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

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}