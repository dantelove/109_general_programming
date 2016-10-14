# med 2_4.rb

# Write a method that takes a string as argument, and returns true if all 
# parentheses in the string are properly balanced, false otherwise. To be 
# properly balanced, parentheses must occur in matching '(' and ')' pairs.

def balanced?(string)
  if string.count("(") == string.count(")")
    n = 0

    string.chars.each do |char|
      n += 1 if char == "("
      n -= 1 if char == ")"
      return false if n < 0
    end

    return true
  end

  return false
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?')== false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false