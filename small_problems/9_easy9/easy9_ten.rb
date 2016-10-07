# easy9_ten.rb

# Write a method which takes a grocery list (array) of fruits with quantities 
# and converts it into an array of the correct number of each fruit.

def buy_fruit(array)
  results = []

  array.each do |item|
    item[1].times do 
      results << item[0] 
    end
  end

  results
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
   ["apples", "apples", "apples", "orange", "bananas","bananas"]