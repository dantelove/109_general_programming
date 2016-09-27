# user_input8.rb

def prompt(msg)
  puts ">> #{msg}"
end

def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

def divisor(num1, num2)
 num1 / num2
end

numerator = ""
loop do 
  prompt "Enter the first numerator:"
  numerator = gets.chomp

  break if valid_number?(numerator)
  prompt "Please enter a valid number."
end

denominator = ""
loop do
  prompt "Enter the denominator:"
  denominator = gets.chomp

  if denominator == "0"
    prompt "Zero is not a valid number."
    redo
  else
    break if valid_number?(denominator)
    prompt "Please enter a valid number."
  end
end

prompt "#{numerator} / #{denominator} = #{divisor(numerator.to_i, denominator.to_i)}"