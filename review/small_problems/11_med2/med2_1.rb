# med2_1.rb

# Write a program that reads the content of a text file and then prints 
# the longest sentence in the file based on number of words. Sentences may 
# end with periods (.), exclamation points (!), or question marks (?). Any 
# sequence of characters that are not spaces or sentence-ending characters 
# should be treated as a word. You should also print the number of words in 
# the longest sentence.

results = [""]

text = File.read('pg84.txt')

text_array = text.split(/[.?!]/)

text_array.each do |x|
  results[0] = x if x.length > results[0].length
end

longest_word = results[0].split.size

puts "The longest sentence is #{longest_word} words long."

