# watch_others_code2_1c.rb

# Write a method that finds all substrings in a string. No 1 letter words.

# Write a method that will return all palindromes within a string.

def substring(string, beg_idx, end_idx = beg_idx)
  string[beg_idx..end_idx]
end

def substrings(string)
  beg_idx = 0
  end_idx = 1
  substring_array = []

  length = string.split("").count

  (length - 1).times do
    substring_array << string[beg_idx..end_idx]
    end_idx += 1
  end

  beg_idx = 1
  end_idx = 2

  (length - 2).times do
    substring_array << string[beg_idx..end_idx]
    end_idx += 1
  end

  beg_idx = 2
  end_idx = 3

  (length - 3).times do
    substring_array << string[beg_idx..end_idx]
    end_idx += 1
  end

  beg_idx = 3
  end_idx = 4

  (length - 4).times do
    substring_array << string[beg_idx..end_idx]
    end_idx += 1
  end

  substring_array
end

def palindromes(string)
  palindrome_array = []

  substrings(string).each do |x|
    if x == x.reverse
      palindrome_array << x
    end
  end

  palindrome_array
end

puts palindromes("hamatat")
puts palindromes("teselel")
puts palindromes("ppop")