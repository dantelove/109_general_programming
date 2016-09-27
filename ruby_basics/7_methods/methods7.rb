# methods7.rb

def add(num1, num2)
  num1.to_i + num2.to_i
end

def multiply(num1, num2)
  num1.to_i * num2.to_i
end

puts add(2, 2) == 4
puts add(5, 4) == 9
puts multiply(add(2, 2), add(5, 4)) == 36