# easy2_7.rb

# Print all even numbers from 1 to 99, inclusive. 
# All numbers should be printed on separate lines.

array = (1..99).to_a

array.each do |num|
  puts num if num.even?
end