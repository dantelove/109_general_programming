# easy8_ten.rb

# Write a method that takes a non-empty string argument, and returns the 
# middle character or characters of the argument. If the argument has an 
# odd length, you should return exactly one character. If the argument has 
# an even length, you should return exactly two characters.

def center_of(string)
  half_length = string.length / 2
  string_array = string.chars
  return string_array[half_length] if string.length.odd?
  string_array[half_length - 1] + string_array[half_length]
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'