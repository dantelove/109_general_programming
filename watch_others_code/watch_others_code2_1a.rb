# watch_others_code2_1a.rb

# Write a method that will return a substring based on specific indices.

# This is my attempt before watching the walkthrough.

def substring(string, beg_idx, end_idx = beg_idx)
  string[beg_idx..end_idx]
end

p substring("honey", 0, 2) # => "hon"
p substring("honey", 1, 2) # => "on"
p substring("honey", 3, 9) # => "ey"
p substring("honey", 2)    # => "n"