# easy8_4.rb

# Write a method that returns a list of all substrings of a string. 
# The returned list should be ordered by where in the string the substring 
# begins. This means that all substrings that start at position 0 should come 
# first, then all substrings that start at position 1, and so on. Since multiple 
# substrings will occur at each position, the substrings at a given position 
# should be returned in order from shortest to longest.

def substrings_at_start(string)
  substrings = string
  results = []

  string.length.times do
    results << substrings
    substrings = substrings.chop
  end

  results.reverse
end

def substrings(string)
  results = []
  n = 0

  string.length.times do
    results << substrings_at_start(string)
    string = string.reverse.chop.reverse
  end

  results.flatten
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
