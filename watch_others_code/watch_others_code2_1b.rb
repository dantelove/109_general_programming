# watch_others_code2_1b.rb

# Write a method that finds all substrings in a string. No 1 letter words.

# This is my attempt before watching the walkthrough.

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

# Attempt to refactor code

# def substrings(string)
#   beg_idx = 0
#   end_idx = 1
#   reduce_length = 1
#   substring_array = []
#   length = string.split("").count

#   loop do

#     (length - reduce_length).times do
#       substring_array << string[beg_idx..end_idx]
#       end_idx += 1
#     end

#     beg_idx += 1
#     end_idx += 1
#     reduce_length += 1

#     break if reduce_length > 5
#   end

#   substring_array.uniq
# end

# p substring("honey", 0, 2) # => "hon"
# p substring("honey", 1, 2) # => "on"
# p substring("honey", 3, 9) # => "ey"
# p substring("honey", 2)    # => "n"

# Write a method that finds all substrings in a string. No 1 letter words.

# This is my attempt before watching the walkthrough.

p substrings("band") # => ["ba", "ban", "band", "an", "and", "nd"]
p substrings("world")
p substrings("pop")