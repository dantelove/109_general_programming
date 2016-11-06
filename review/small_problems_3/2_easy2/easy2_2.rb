# easy2_2.rb

# Build a program that asks a user for the length and width of a room in meters 
# and then displays the area of the room in both square meters and square feet.

METERS_TO_FEET = 10.7639

def prompt(string)
  puts ">> #{string}"
end

prompt "Enter the length of the room in meters."
length = gets.to_i

prompt "Enter the width of the room in meters"
width = gets.to_i

area_in_meters = length * width
area_in_feet = (area_in_meters * METERS_TO_FEET).round(2)

prompt "The area of the room is #{area_in_meters} square meters " +
       "(#{area_in_feet} square feet)."