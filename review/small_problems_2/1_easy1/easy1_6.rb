# easy1_6.rb

# Write a method that takes one argument, a string containing one or more words, 
# and returns the given string with all five or more letter words reversed. 
# Each string will consist of only letters and spaces. Spaces should be 
# included only when more than one word is present.

def reverse_words(string)
  string.split.map {|x| x.length >= 5 ? x.reverse : x}.join(" ")
end

p reverse_words('Professional')          == "lanoisseforP"
p reverse_words('Walk around the block') == "Walk dnuora the kcolb"
p reverse_words('Launch School')         == "hcnuaL loohcS"