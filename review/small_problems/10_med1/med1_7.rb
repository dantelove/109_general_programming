# med1_7.rb

# Write a method that takes a sentence string as input, and returns a 
# new string that contains the original string with any sequence of the 
# words 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 
# 'eight', 'nine' converted to a string of digits.

DIGITS = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 
          'eight', 'nine']

def word_to_digit(string)
  results = []

  split_string = string.gsub(".", " .").split

  split_string.each do |x|
    if DIGITS.index(x)
      results << DIGITS.index(x)
    else
      results << x
    end
  end

  results.join(" ").gsub(" .", ".")
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 
'Please call me at 5 5 5 1 2 3 4. Thanks.'