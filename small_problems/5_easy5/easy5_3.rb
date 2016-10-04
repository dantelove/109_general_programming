# easy5_3.rb

# Write two methods that each take a time of day in 24 hour format, 
# and return the number of minutes before and after midnight, respectively. 
# Both methods should return a value in the range 0..1439.

# You may not use ruby's Date and Time methods.

require 'pry'

def after_midnight(string)
  time_array = string.split(":")

  time_array.map!(&:to_i)

  minutes = time_array[0]*60 + time_array[1]

  return 0 if minutes == 1440

  minutes
end

def before_midnight(string)
  time_array = string.split(":")

  time_array.map!(&:to_i)

  minutes = 1440 - (time_array[0]*60 + time_array[1])

  return 0 if minutes == 1440

  minutes
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0