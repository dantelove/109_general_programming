# watch_others_code1_a.rb

# Write a method that will determine whether an integer is a prime.
# Don't use the prime classe.

# is_prime?(3)
# is_prime?(4)

#This is my attempt before watching the walkthrough

def is_prime?(num)
  (2..(num - 1)).select do |x| #refactored to remove range variable
    return false if num % x == 0
  end
  return true #moved the this return to solve is_prime?(2) while watching video
end

p is_prime?(3)
p is_prime?(4)
p is_prime?(2)