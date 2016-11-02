# easy1_4.rb

# Write a method that counts the number of occurrences of each element in 
# a given array.

def count_occurrences(array)
  results = Hash.new(0)

  array.each {|obj| results[obj] = array.count(obj)}

  results.each {|k,v| puts "#{k} => #{v}"}
end

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

count_occurrences(vehicles)