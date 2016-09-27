# user_input5.rb

def prompt(msg)
  puts ">> #{msg}"
end

prompt "How many lines do you want? Enter a number >= 3:"

number_of_lines = gets.chomp.to_i

loop do
  if number_of_lines >= 3
    number_of_lines.times do
      prompt "Launch School is the best."
    end
    break
  else
    prompt "Please a number greater than 3."
  end
end