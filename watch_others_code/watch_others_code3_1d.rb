# watch_others_code3_1d.rb

# Write a method that returns the correct value.

# This is my attempt before watching the walkthrough.

require 'pry'

NUM_VALUES = {
              "zero"=> 0, "one"=>1, "two"=>2, "three"=>3, 
              "four"=>4,"five"=>5, "six"=>6, "seven"=>7, 
              "eight"=>8,"nine"=>9, "ten"=>10,
              "0"=>0, "1"=>1, "2"=>2, "3"=>3, "4"=>4,"5"=>5, 
              "6"=>6, "7"=>7, "8"=>8, "9"=>9, "10"=>10
}

# def computer(english)
#   operation = english.split(" ")

#   case operation[1]
#   when "plus"
#     NUM_VALUES[operation[0]] + NUM_VALUES[operation[2]]
#   when "minus"
#     NUM_VALUES[operation[0]] - NUM_VALUES[operation[2]]
#   end
# end

# def computer(english)
#   operation = english.split(" ")
#   result = NUM_VALUES[operation[0]]
#   n = 0

#   operation.size.times do 
#     case operation[n]
#     when "times"
#       result *= NUM_VALUES[operation[n + 1]]
#     when "divided"
#       result /= NUM_VALUES[operation[n + 2]]
#     when "plus"
#       result += NUM_VALUES[operation[n + 1]]
#     when "minus"
#       result -= NUM_VALUES[operation[n + 1]]
#     end
#     n += 1
#   end

# result
# end

def words_to_integers(english)
  operation = english.split(" ")
  result = []
  n = 0
  quotient = 0

  operation.each do |word|
    case word
    when "plus"
      result << :+
    when "minus"
      result << :-
    when "times"
      result << :*
    when "divided"
      result << :/
    when "by"
      #do nothing
    else
    result << NUM_VALUES[word]
    end
  end

  result
end

def quotient(array)
  n = 0

  loop do 
  break unless array.include?(:/)
    n = array.find_index(:/)
    quotient = array[n - 1] / array[n + 1]
    array[n] = quotient
    array.delete_at(n - 1)
    array.delete_at(n)
  end

  array
end

def product(array)
  n = 0

  loop do 
  break unless array.include?(:*)
    n = array.find_index(:*)
    product = array[n - 1] * array[n + 1]
    array[n] = product
    array.delete_at(n - 1)
    array.delete_at(n)
  end

  array
end

def sum(array)
   n = 0

  loop do 
  break unless array.include?(:+)
    n = array.find_index(:+)
    sum = array[n - 1] + array[n + 1]
    array[n] = sum
    array.delete_at(n - 1)
    array.delete_at(n)
  end

  array
end

def difference(array)
  n = 0

  loop do 
  break unless array.include?(:-)
    n = array.find_index(:-)
    difference = array[n - 1] - array[n + 1]
    array[n] = difference
    array.delete_at(n - 1)
    array.delete_at(n)
  end

  array
end

def computer(english)
  operation = words_to_integers(english)

  binding.pry

  quotient(operation)

  product(operation)

  sum(operation)

  binding.pry

  difference(operation)

  binding.pry

  operation
end

p computer("two plus two")    # => 4
p computer("seven minus six") # => 1
p computer("zero plus eight") # => 8
p computer("two plus two minus three") # =>1
p computer("three minus one plus five minus 4 plus six plus 10 minus 4") # =>15

# # p computer("eight times four plus six divided by two minus two") # => 17; not 33
# # p computer("one plus four times two minus two") # => 8, not 7
# # p computer("nine divided by three times six") # => 18

p computer("eight times four plus six divided by two minus two") # => 33
p computer("one plus four times two minus two") # => 7
p computer("nine divided by three times six")   # => 18
p computer("seven plus four divided by two")    # => 9
p computer("seven times four plus one divided by three minus two") # => 26
p computer("one plus four times three divided by two minus two")   # => 5
p computer("nine divided by three times six") # => 18

# what if you just tried to reorder the array before iterating on it.
# you can do it in order. What if you just put the array in the right order?

p computer("six divided by one minus two")
