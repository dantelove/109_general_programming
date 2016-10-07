# easy9_7.rb

# Write a method that takes a first name, a space, and a last name passed as a 
# single String argument, and returns a string that contains the last name, a 
# comma, a space, and the first name.

def swap_name(string)
  last_name = string.split(" ").pop
  first_name = string.split.reverse.pop

  "#{last_name}, #{first_name}"
end

p swap_name('Joe Roberts') #== 'Roberts, Joe'