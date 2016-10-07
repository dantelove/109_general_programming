# easy8_7.rb

# Write a method that takes a string, and returns a new string in which every 
# character is doubled.

def repeater(string)
  results = []

  string.chars.each do |char|
    results << char
    results << char
  end

  results.join
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''