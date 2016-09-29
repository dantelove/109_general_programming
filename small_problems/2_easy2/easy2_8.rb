# easy2_8.rb

# Write a program that asks the user to enter an integer greater 
# than 0, then asks if the user wants to determine the sum or 
# product of all numbers between 1 and the entered integer.

def prompt(msg)
  puts ">> #{msg}"
end

def numbers_between(num)
  result = []
  num.times do
    result << num
    num -= 1
  end
  result
end

prompt "Please enter an integer greater than zero:"
integer = gets.to_i

prompt "Enter 's' to compute the sum, 'p' to compute the product."
selection = gets.chomp.downcase

result = 0
operation = ''
case selection
when "s"
  result = numbers_between(integer).inject(:+)
  operation = "sum"
when "p"
  result = numbers_between(integer).inject(:*)
  operation = "product"
end

prompt "The #{operation} of the integers between 1 and #{integer} is #{result}."