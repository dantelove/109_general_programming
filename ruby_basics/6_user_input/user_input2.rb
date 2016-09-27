# user_input2.rb

def prompt(msg)
  puts ">> #{msg}"
end

prompt "What is your age in years?"

age = gets.chomp.to_i

prompt "You are #{age * 12} months old."