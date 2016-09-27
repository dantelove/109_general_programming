# user_input7.rb

def prompt(msg)
  puts ">> #{msg}"
end

USERNAME = "ls"
PASSWORD = "launchschool"

loop do
  prompt "Please enter your username:"
  username_try = gets.chomp

  prompt "Please enter your password:"
  password_try = gets.chomp
  
  break if username_try == USERNAME && password_try == PASSWORD
  prompt "Invalid username and/or password!"
end

prompt "Welcome!"