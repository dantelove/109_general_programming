# easy1_4.rb

# Write a method that counts the number of occurrences of each element 
# in a given array.

# Once counted, print each element alongside the number of occurrences.

def count_occurrences(array)
  results = {}

  array.each do |vehicle|
    results[vehicle] = array.count(vehicle)
  end

  results.each do |k,v|
    puts "#{k} => #{v}"
  end
end

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', + 
            'motorcycle', 'car', 'truck']

count_occurrences(vehicles)