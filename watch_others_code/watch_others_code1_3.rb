# watch_others_code1_3.rb

# Write a method that will determine whether an integer is a prime.
# Don't use the prime classe.

# is_prime?(3)
# is_prime?(4)

def is_prime?(num)
  return false if num == 1 #added gaurd clause after watching walkthrough
  (2..(num - 1)).select do |x| #refactored to remove range variable
    return false if num % x == 0
  end
  return true #moved the this return to solve is_prime?(2) while watching video
end

# p is_prime?(3)
# p is_prime?(4)
# p is_prime?(2)

# Write a method that will take an array of numbers, and only return those that
# are prime

# select_primes ([1, 2, 3, 4, 5] => [2, 3])
# select_primes ([4,6,8,10]) => []

#Not sure what to do about 1.

array1 = [1, 2, 3, 4]
array2 = [4, 6 , 8, 10]

def select_primes(array)
  array.select { |num| is_prime?(num) }
end

# p select_primes(array1)
# p select_primes(array2)

# Write a method that will take an array of numbers and return the number of 
# primes in the array.

#This is my attempt before watching the walkthough.

def count_primes(array)
  count = 0
  array.each do |num|
    if is_prime?(num)
      count += 1
    end
  end
  return count
end

p count_primes([1, 2, 3, 4]) #=> 2
p count_primes([4, 6, 8, 10]) #=> 0