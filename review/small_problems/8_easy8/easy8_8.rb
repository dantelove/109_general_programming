# easy8_8.rb

# Write a method that takes a string, and returns a new string in which 
# every consonant character is doubled. Vowels (a,e,i,o,u), digits, 
# punctuation, and whitespace should not be doubled.

def double_consonants(string)
  string.chars.map { |x| x =~ /[^AEIOUaeiou]/ && x =~ /[A-Za-z]/ ? "#{x}#{x}" : "#{x}" }.join
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""