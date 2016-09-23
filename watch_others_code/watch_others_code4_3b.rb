# watch_others_code4_3b.rb

# Write a method that will generate random english math problems.
# The method should take a length, then return a math phrase with
# that many operations.

# Example:

# math_phrase(1) # => "five minus two"
# math_phrase(2) # => "two plus three times eight"
# math_phrase(3) # => "one divided by three plus five times zero"

# This my attempt before watching the walktrhough.

# Given

NUMBERS = %w(zero one two three four five six seven eight nine ten)
OPERATORS = %w(plus minus times divided\ by)

# def math_phrase(num)
#   phrase_array = ["#{NUMBERS.sample}"]

#   num.times do 
#     phrase_array << "#{OPERATORS.sample} #{NUMBERS.sample}"
#   end

#   phrase_array.join(" ").to_s
# end

# p math_phrase(1) # => "five minus two"
# p math_phrase(2) # => "two plus three times eight"
# p math_phrase(3) # => "one divided by three plus five times zero"

# Write a program that will generate random english math problems of
# varying length.

def math_phrase
  phrase_array = ["#{NUMBERS.sample}"]

  rand(1..10).times do 
    phrase_array << "#{OPERATORS.sample} #{NUMBERS.sample}"
  end

  phrase_array.join(" ").to_s
end

p math_phrase
p math_phrase
p math_phrase
p math_phrase
p math_phrase
p math_phrase