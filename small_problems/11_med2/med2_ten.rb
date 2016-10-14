# med2_ten.rb

# Write a method that computes the difference between the square of the sum of 
# the first n positive integers and the sum of the squares of the first n positive 
# integers.

def sum_square_difference(num)
  sum_square = ((1..num).inject(:+))**2
  
  square_sum = (1..num).map {|num| num**2}.inject(:+)

  sum_square - square_sum
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150