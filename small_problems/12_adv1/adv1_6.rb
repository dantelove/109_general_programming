# adv1_6.rb

# Write a method that takes an Array, and returns an Array of Arrays that 
# represent the permutations of the original Array. The order of the 
# permutations does not matter. You may not use the Array#permutations method 
# nor any other standard method that is meant to generate permutations -- 
# please devise your own way of generating the permutations.

# For simplicity, you may assume that each element of the array has a 
# unique value.

def permutations(array)
  results = []

  1000.times do 
    premutation = array.shuffle
    results << array << premutation
  end

  results.uniq.sort
end

p permutations([2])
# -> [[2]]

p permutations([1, 2])
# -> [[1, 2], [2, 1]]

p permutations([1, 2, 3])
# -> [[1, 2, 3], [1, 3, 2], [2, 1, 3], [2, 3, 1], [3, 1, 2], [3, 2, 1]]

p permutations([1, 2, 3, 4])
# -> [[1, 2, 3, 4], [1, 2, 4, 3], [1, 3, 2, 4],
#     [1, 3, 4, 2], [1, 4, 2, 3], [1, 4, 3, 2],
#     [2, 1, 3, 4], [2, 1, 4, 3], [2, 3, 1, 4],
#     [2, 3, 4, 1], [2, 4, 1, 3], [2, 4, 3, 1],
#     [3, 1, 2, 4], [3, 1, 4, 2], [3, 2, 1, 4],
#     [3, 2, 4, 1], [3, 4, 1, 2], [3, 4, 2, 1],
#     [4, 1, 2, 3], [4, 1, 3, 2], [4, 2, 1, 3],
#     [4, 2, 3, 1], [4, 3, 1, 2], [4, 3, 2, 1]]
