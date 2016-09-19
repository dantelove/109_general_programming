# watch_others_code3_1.rb

# Write that returns the correct value.

# This is my attempt before watching the walkthrough.

NUM_VALUES = {"zero"=> 0, "one"=>1, "two"=>2, "three"=>3, 
              "four"=>4,"five"=>5, "six"=>6, "seven"=>7, 
              "eight"=>8,"nine"=>9, "ten"=>10,
              "0"=>0, "1"=>1, "2"=>2, "3"=>3, "4"=>4,"5"=>5, 
              "6"=>6, "7"=>7, "8"=>8, "9"=>9, "10"=>10}

def computer(english)
operation = english.split(" ")

  case operation[1]
  when "plus"
    NUM_VALUES[operation[0]] + NUM_VALUES[operation[2]]
  when "minus"
    NUM_VALUES[operation[0]] - NUM_VALUES[operation[2]]
  end
end

p computer("two plus two")    # => 4
p computer("seven minus six") # => 1
p computer("zero plus 8")     # => 8