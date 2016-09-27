# user_input3.rb

def prompt(msg)
  puts ">> #{msg}"
end

prompt "Do you want me to print something? (y/n) "

ans = gets.chomp

prompt "something" if ans.downcase.start_with?('y')