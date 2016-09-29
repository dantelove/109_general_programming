# easy2_2.rb

# Build a program that asks a user for the length and width of a 
# room in meters and then displays the area of the room in both 
# square meters and square feet.

def prompt(msg)
  puts ">> #{msg}"
end

prompt "Please enter the length of your room in meters:"
meters_length = gets.chomp

prompt "Please enter the width of your room in meters:"
meters_width = gets.chomp

meters_area = meters_length.to_i * meters_width.to_i

sf_area = meters_area.to_i * 10.7639

prompt "The area of the room is #{meters_area} square meters (#{sf_area} square feet)."
