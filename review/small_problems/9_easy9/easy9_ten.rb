# easy9_ten.rb

# Write a method which takes a grocery list (array) of fruits with 
# quantities and converts it into an array of the correct number of 
# each fruit.

# the problem is this isn't three arrays this is one nested array so 
# the variable assignments aren't lined up.

def buy_fruit(array)
  results = []

  array.each do |fruit, num|
    num.times do
      results << fruit
    end
  end

  results
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) #==
  # ["apples", "apples", "apples", "orange", "bananas","bananas"]