# easy1_5.rb

# Write a method that takes one argument, a string, and returns the same 
# string with the words in reverse order.

def reverse_sentence(string)
  string.split(" ").reverse.join(" ")
end

p reverse_sentence('') == ''
p reverse_sentence('Hello World') == 'World Hello'
p reverse_sentence('Reverse these words') == 'words these Reverse'