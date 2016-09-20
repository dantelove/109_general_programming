# watch_others_code3_1c.rb

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

def computer(english)
  operation = english.split(" ")
  result = NUM_VALUES[operation[0]]
  n = 0

  operation.size.times do 
    case operation[n]
    when "plus"
      result += NUM_VALUES[operation[n + 1]]
    when "minus"
      result -= NUM_VALUES[operation[n + 1]]
    when "times"
      result *= NUM_VALUES[operation[n + 1]]
    when "divided"
      result /= NUM_VALUES[operation[n + 2]]
    end
    n += 1
  end

  result
end

p computer("two plus two")    # => 4
p computer("seven minus six") # => 1
p computer("zero plus eight") # => 8
p computer("two plus two minus three") # =>1
p computer("three minus one plus five minus 4 plus six plus 10 minus 4") # =>15
p computer("eight times four plus six divided by two minus two") # => 17; not 33
p computer("one plus four times two minus two") # => 8, not 7
p computer("nine divided by three times six") # => 18