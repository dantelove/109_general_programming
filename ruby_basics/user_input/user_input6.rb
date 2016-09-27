# user_input6.rb

def prompt(msg)
  puts ">> #{msg}"
end

PASSWORD = "launchschool"

loop do
  prompt "Please enter your password:"

  input = gets.chomp

  if input == PASSWORD
    prompt "Welcome!"
    break
  else
    prompt "Invalid password!"
  end
end