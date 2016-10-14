# adv1_1.rb

# Make a madlibs program that reads in some text from a text file that you have 
# created, and then plugs in a selection of randomized nouns, verbs, adjectives, 
# and adverbs into that text and prints it. You can build your lists of nouns, 
# verbs, adjectives, and adverbs directly into your program, but the text data 
# should come from a file or other external source. Your program should read this 
# text, and for each line, it should place random words of the appropriate types 
# into the text, and print the result.

# The challenge of this program isn't about writing your program; it's about 
# choosing how to represent your data. Choose the right way to structure your 
# data, and this problem becomes a whole lot easier.

require 'erb'

color = ["white", "black", "brown", "yellow", "green", "orange", "red", "blue"].sample

adjective = ["hot", "new", "nice", "sleepy", "hungry", "old", "pale"].sample

noun = ["cat", "dog", "horse", "bat", "mouse", "moose", "goose"].sample

adverb = ["happily", "hazily", "safely", "quickly", "coyly", "harshly"].sample

verb = ["runs", "jumps", "flies", "cooks", "munches"].sample

template = File.read('adv1_1.erb')

madlibs = ERB.new(template)

puts madlibs.result(binding)