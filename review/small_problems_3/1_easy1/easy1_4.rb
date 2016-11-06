# easy1_4.rb

# Write a method that counts the number of occurrences of each element in a given array.

def count_occurrences(array)
  puts array.uniq.map { |x| "#{x} => #{array.count(x)}" }
end

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

count_occurrences(vehicles)
