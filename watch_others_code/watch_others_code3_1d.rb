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
  quotient_array = array.take(3) if array[1] == :/

  quotient = quotient_array[0] / quotient_array[2]

  3.times { array.shift }

  array.unshift(quotient)
end

def product(array)
  product_array = array.take(3) if array[1] == :*

  if product_array.empty?
    
  else
    product = product_array[0] * product_array[2]
    3.times { array.shift }
    array.unshift(product)
  end
  array
end

def sum(array)
  sum_array = array.take(3) if array[1] = :+

  if sum_array.!empty?
    sum = sum_array[0] + product_array[2]
    3.times { array.shift }
    array.unshift(sum)
  end
  array
end

def difference(array)
  difference_array = array.take(3) if array[1] = :-

  difference = difference_array[0] + difference_array[2]

  3.times { array.shift }

  array.unshift(difference)
end

def computer(english)
  operation = words_to_integers(english)

  quotient(operation)

  product(operation)

  sum(operation)

  difference(operation)

  operation
end



# p computer("two plus two")    # => 4
# p computer("seven minus six") # => 1
# p computer("zero plus eight") # => 8
# p computer("two plus two minus three") # =>1
# p computer("three minus one plus five minus 4 plus six plus 10 minus 4") # =>15

# # p computer("eight times four plus six divided by two minus two") # => 17; not 33
# # p computer("one plus four times two minus two") # => 8, not 7
# # p computer("nine divided by three times six") # => 18

# p computer("eight times four plus six divided by two minus two") # => 33
# p computer("one plus four times two minus two") # => 7
# p computer("nine divided by three times six")   # => 18
# p computer("seven plus four divided by two")    # => 9
# p computer("seven times four plus one divided by three minus two") # => 26
# p computer("one plus four times three divided by two minus two")   # => 5
# p computer("nine divided by three times six") # => 18

# what if you just tried to reorder the array before iterating on it.
# you can do it in order. What if you just put the array in the right order?

p computer("six divided by three minus two")