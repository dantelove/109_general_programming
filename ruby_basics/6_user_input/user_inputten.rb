# user_inputten.rb

def prompt(msg)
  puts ">> #{msg}"
end

def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

def add (num1, num2)
  num1 + num2
end

num1 = ""
num2 = ""
loop do
  loop do
    prompt "Please enter two numbers: one positive & one negative."
    prompt "Enter the first number."
    num1 = gets.chomp

    break if valid_number?(num1)
    prompt "Please enter valid number."
  end

  loop do 
    prompt "Enter the second number."
    num2 = gets.chomp

    break if valid_number?(num2)
    prompt "Please enter a valid number."
  end

  if (num1.to_i.positive? && num2.to_i.negative?) ||
     (num1.to_i.negative? && num2.to_i.positive?)
     break
   else
    prompt "You did not enter one positive and one negative number."
  end
end

prompt "#{num1} + #{num2} = #{add(num1.to_i, num2.to_i)}" 