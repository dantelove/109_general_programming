# easy1_3.rb

# Write a method that takes one argument, a positive integer, 
# and returns a list of the digits in the number.

def digit_list(num)
  num_strings = num.to_s.split("")

  results =  num_strings.map do |number|
               number.to_i
             end
  results
end

p digit_list(12345) == [1, 2, 3, 4, 5]
p digit_list(7) == [7]
p digit_list(375290) == [3, 7, 5, 2, 9, 0]
p digit_list(444) == [4, 4, 4]