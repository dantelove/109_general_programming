# watch_others_code2_1b.rb

# Write a method that finds all substrings in a string. No 1 letter words.

# This is the LaunchSchool Solution

def substring(string, beg_idx, end_idx = beg_idx)
  string[beg_idx..end_idx]
end

def substrings(string)
  results = []

  string.chars.each_with_index do |letter, index|
    position = index + 1

    (string.size - position).times do |num|
      results << substring(string, index, index+num+1)
    end
  end
  results
end

p substrings("band") # => ["ba", "ban", "band", "an", "and", "nd"]
p substrings("world")
p substrings("pop")