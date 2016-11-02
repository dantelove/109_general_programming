# easy2_2.rb

# Build a program that asks a user for the length and width of a room in 
# meters and then displays the area of the room in both square meters and 
# square feet.

METERS_TO_FEET = 10.7639

def prompt(string)
  puts ">> #{string}"
end

prompt "Enter the length of the room in meters:"
length_in_meters = gets.chomp.to_f

prompt "Enter the width of the room in meters:"
width_in_meters = gets.chomp.to_f

area_in_meters = length_in_meters * width_in_meters

area_in_feet = (area_in_meters * METERS_TO_FEET).round(2)

prompt "The area of the room is #{area_in_meters} square meters" +
       " (#{area_in_feet} square feet)."
