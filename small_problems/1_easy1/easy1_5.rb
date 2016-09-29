# easy1_5.rb

# Write a method that takes one argument, a string, 
# and returns the same string with the words in reverse order.

def reverse_sentence(string)
  results = []

  split_string = string.split(' ')

  split_string.size.times do 
    results << split_string.pop
  end

  results.join(" ")
end


puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'