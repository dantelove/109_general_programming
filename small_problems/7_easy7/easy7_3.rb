# easy7_3.rb

# Write a method that takes a single String argument and returns a new string 
# that contains the original value of the argument, but the first letter of 
# every word is now capitalized.

def word_cap(string)
  results = []

  string.split.each do |word|
    results << word.capitalize
  end

  results.join(" ")
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'