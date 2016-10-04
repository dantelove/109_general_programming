# easy5_9.rb

# Write a method that takes a string argument and returns a new string that 
# contains the value of the original string with all consecutive duplicate 
# characters collapsed into a single character.

def crunch(string)
  results = []
  n = 0

  string.chars.each do |letter|
    results << letter unless string[n] == string[n+1]
    n += 1
  end

  results.join("")
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''