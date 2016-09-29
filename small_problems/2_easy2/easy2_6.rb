# easy2_6.rb

# Print all odd numbers from 1 to 99, inclusive. 
# All numbers should be printed on separate lines.

array = (1..99).to_a

array.each do |num|
  puts num if num.odd?
end