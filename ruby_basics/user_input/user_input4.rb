# user_input4.rb

def prompt(msg)
  puts ">> #{msg}"
end

loop do
  prompt "Do you want me to print something? (y/n) "

  ans = gets.chomp

  if ans.downcase.start_with?('y', 'n')
    case ans.downcase
    when 'y'
      prompt "something"
    when 'n'
      # do nothing
    end
    
    break
  else
    prompt "Please enter 'y' or 'n'."
  end
end