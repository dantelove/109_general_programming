# med2_4.rb

# Write a method that takes a string as argument, and returns true if 
# all parentheses in the string are properly balanced, false otherwise. 
# To be properly balanced, parentheses must occur in matching '(' and ')' 
# pairs.

def balanced?(string)
  paren = 0

  string.chars.each do |x|
    if x == "("
      paren +=1
    elsif x == ")"
      paren -= 1
      return false if paren < 0
    end
  end

  string.count("(") == string.count(")")
end

p balanced?('What (is) this?')# == true
p balanced?('What is) this?')# == false
p balanced?('What (is this?') #== false
p balanced?('((What) (is this))?') #== true
p balanced?('((What)) (is this))?') #== false
p balanced?('Hey!') #== true
p balanced?(')Hey!(') #== false
p balanced?('What ((is))) up(') #== false