# easy2_2.rb

# Build a program that asks a user for the length and width of a room in 
# meters and then displays the area of the room in both square meters and 
# square feet.

# Note: 1 square meter == 10.7639 square feet

def prompt(msg)
  puts ">> #{msg}"
end

SQ_METER_TO_SQ_FEET_CONVERSION = 10.7639

prompt "Enter the length of the room in meters:"
length_in_meters = gets.chomp.to_i

prompt "Enter the width of the room in meters:"
width_in_meters = gets.chomp.to_i

area_in_meters = length_in_meters * width_in_meters

area_in_feet = area_in_meters * SQ_METER_TO_SQ_FEET_CONVERSION

prompt "The area of the room is #{area_in_meters} square meters " + 
       "(#{area_in_feet.round(2)})."

