# user_input1.rb

def prompt(msg)
  puts ">> #{msg}"
end

prompt "Type anything you want."

answer = gets.chomp

prompt answer