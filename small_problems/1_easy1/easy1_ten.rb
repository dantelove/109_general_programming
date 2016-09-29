# easy1_ten.rb

# Write a method that takes two arguments, a positive integer 
# and a boolean, and calculates the bonus for a given salary. 
# If the boolean is true, the bonus should be half of the salary. 
# If the boolean is false, the bonus should be 0.

def calculate_bonus(num, boolean)
  boolean ? num / 2 : 0
end

p calculate_bonus(2800, true) == 1400
p calculate_bonus(1000, false) == 0
p calculate_bonus(50000, true) == 25000