# easy1_7.rb

# Write a method that takes one argument, a positive integer, 
# and returns a string of alternating 1s and 0s, always starting 
# with 1. The length of the string should match the given integer.

def stringy(num)
  zero_array = []
  one_array = []

  (num / 2).times do
    zero_array << 0
    one_array << 1
    end

  if num.odd?
    one_array << 1
  end

  one_array.zip(zero_array).flatten.join("")
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'