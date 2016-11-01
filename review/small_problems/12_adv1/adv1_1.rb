# adv1_1.rb

# Let's build another program using madlibs. We made a program like this 
# in the easy exercises. This time the requirements will be a bit different.

# Make a madlibs program that reads in some text from a text file that you 
# have created, and then plugs in a selection of randomized nouns, verbs, 
# adjectives, and adverbs into that text and prints it. You can build your 
# lists of nouns, verbs, adjectives, and adverbs directly into your program, 
# but the text data should come from a file or other external source. Your 
# program should read this text, and for each line, it should place random 
# words of the appropriate types into the text, and print the result.

# The challenge of this program isn't about writing your program; it's about 
# choosing how to represent your data. Choose the right way to structure your 
# data, and this problem becomes a whole lot easier.

require 'erb'

adjective = ["hot", "tall", "smelly", "weird", "apprehensive"]

color = ["red", "blue", "green", "yellow", "white", "orange"]

animal = ["horse", "cat", "dog", "tiger", "owl"]

adverb = ["safely", "cautiously", "noisily", "bravely"]

verb = ["runs", "bites", "eats", "hunts", "cooks", "swims"]

text = ERB.new(File.read('madlibs.erb'))

puts text.result(binding)