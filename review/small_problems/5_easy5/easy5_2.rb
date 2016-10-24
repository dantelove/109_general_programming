#easy5_2.rb

# The time of day can be represented as the number of minutes before or after 
# midnight. If the number of minutes is positive, the time is after midnight. 
# If the number of minutes is negative, the time is before midnight.

# Write a method that takes a time using this minute-based format and returns 
# the time of day in 24 hour format (hh:mm). Your method should work with any 
# integer input.

# You may not use ruby's Date and Time classes.

MINUTES_IN_A_DAY = 60 * 24

def time_of_day(num)
  div, difference = (MINUTES_IN_A_DAY - num).divmod(MINUTES_IN_A_DAY)
  hours = ((MINUTES_IN_A_DAY - difference)/60.00).floor
  minutes = (MINUTES_IN_A_DAY - difference)/60.00 - hours

  hours %= 24
  minutes *= 60

  "%02d%s%02d" % [hours, ":", minutes.round]
end

p time_of_day(0) #== "00:00"
p time_of_day(-3) #== "23:57"
p time_of_day(35) #== "00:35"
p time_of_day(-1437) #== "00:03"
p time_of_day(3000) #== "02:00"
p time_of_day(800) #== "13:20"
p time_of_day(-4231) #== "01:29"