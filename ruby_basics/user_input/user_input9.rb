# user_input9.rb

def prompt(msg)
  puts ">> #{msg}"
end

loop do
  prompt "How many lines do you want? Enter a number >= 3 ('q' to Quit):"

  number_of_lines = gets.chomp

  if number_of_lines.to_i >= 3
    number_of_lines.to_i.times do
      prompt "Launch School is the best."
    end
  elsif number_of_lines.downcase == 'q'
    break
  else
    prompt "Please a number greater than 3."
  end
end