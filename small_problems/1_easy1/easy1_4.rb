# easy1_4.rb

# Write a method that counts the number of occurrences 
# of each element in a given array.

def count_occurrences(array)
  results = {}

  item1 =   array.select do |item|
              item == array[0]
            end
  item2 =   array.select do |item|
              item == array[2]
            end
  item3 =   array.select do |item|
              item == array[4]
            end
  item4 =   array.select do |item|
              item == array[6]
            end

  results[item1[0]] = item1.count
  results[item2[0]] = item2.count
  results[item3[0]] = item3.count
  results[item4[0]] = item4.count

  results
end

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

p count_occurrences(vehicles)