# easy6_1.rb

# Write a method that takes a floating point number that represents an 
# angle between 0 and 360 degrees and returns a String that represents 
# that angle in degrees, minutes, and seconds. You should use a degree 
# symbol (˚) to represent degrees, a single quote (') to represent minutes, 
# and a double quote (") to represent seconds. There are 60 minutes in a 
# degree, and 60 seconds in a minute.

def dms(num)
  degree_symbol = "\u00B0"
  degrees = num.to_i
  num.zero? || num % num.to_i == 0 ? minutes = 0 : minutes = num % num.to_i * 60 
  num.zero? || num % num.to_i == 0 ? seconds = 0 : seconds = minutes % minutes.to_i * 60
  format("%1d%s%02d'%02d\"", degrees, degree_symbol, minutes, seconds)
end

puts dms(30) #== %(30°00'00")
puts dms(76.73) #== %(76°43'48")
puts dms(254.6) #== %(254°36'00")
puts dms(93.034773) #== %(93°02'05")
puts dms(0) #== %(0°00'00")
puts dms(360)# == %(360°00'00") || dms(360) == %(0°00'00")