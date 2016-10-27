#easy8_4.rb

# Write a method that returns a list of all substrings of a string. 
# The returned list should be ordered by where in the string the 
# substring begins. This means that all substrings that start at 
# position 0 should come first, then all substrings that start at 
# position 1, and so on. Since multiple substrings will occur at each 
# position, the substrings at a given position should be returned in 
# order from shortest to longest.

# You may (and should) use the substrings_at_start method you wrote in 
# the previous exercise:

def substrings_at_start(string)
  results = []
  n = -1

  string.length.times do
    results << string[0..n]
    n -= 1
  end

  results.sort
end

def substrings(string)
  results = []
  n = 0

  string.length.times do 
    results << substrings_at_start(string[n..-1])
    n += 1
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