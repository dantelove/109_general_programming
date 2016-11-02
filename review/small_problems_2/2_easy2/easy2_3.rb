# easy2_3.rb

# Create a simple tip calculator. The program should prompt for a bill 
# amount and a tip rate. The program must compute the tip and then display 
# both the tip and the total amount of the bill.

def prompt(string)
  puts ">> #{string}"
end

prompt "What is the bill?"
bill = gets.chomp.to_f

prompt "What is the tip percentage?"
tip_percentage = gets.chomp.to_f / 100

tip = bill * tip_percentage
total = bill + tip

prompt "The tip is $#{tip}"
prompt "The total is $#{total}"