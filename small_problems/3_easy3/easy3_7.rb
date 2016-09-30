# easy3_7.rb

# Write a method that returns an Array that contains every other element
# of an Array that is passed in as an argument. The values in the returned 
# list should be those values that are in the 1st, 3rd, 5th, and so on elements 
# of the argument Array.

def oddities(array)
  a = 0
  results = []

  array.size.times do
    if a == 0 || a % 2 == 0
      results << array[a]
    end
    a += 1
  end

  results
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []