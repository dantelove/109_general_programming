# beginning_ruby_5_2.rb

# Write a method that takes a string, and returns a boolean indicating whether
# this string has a balanced set of parentheses.

# ----
# balancer("hi")  #=> true
# balancer("(hi") #=> false
# balancer("(hi)") #=> true

# Bonus:

# balancer("") hi ("") #=> false

# This is my attempt before watching the walkthrough

def balancer(string)
  if string.start_with?("(")
  string.end_with?(")") &&
  string.start_with?("(")
  elsif string.start_with?(")")
    false
  else
    true
  end
end

p balancer("hi")
p balancer("(hi")
p balancer("(hi)")
p balancer(") hi (")