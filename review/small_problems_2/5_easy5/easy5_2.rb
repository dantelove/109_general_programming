# easy5_2.rb

# The time of day can be represented as the number of minutes before or 
# after midnight. If the number of minutes is positive, the time is after 
# midnight. If the number of minutes is negative, the time is before midnight.

# Write a method that takes a time using this minute-based format and returns 
# the time of day in 24 hour format (hh:mm). Your method should work with 
# any integer input.

# LS Solution

# MINUTES_PER_HOUR = 60
# HOURS_PER_DAY = 24
# MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

# def time_of_day(num)
#   num = num % MINUTES_PER_DAY
#   hours, minutes = num.divmod(MINUTES_PER_HOUR)
#   format('%02d:%02d', hours, minutes)
# end

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = MINUTES_PER_HOUR * HOURS_PER_DAY

def time_of_day(num)
  num.positive? ? time = "after" : time = "before"

  case time
  when "after"
    if num > MINUTES_PER_DAY
      divided, minutes = num.divmod(MINUTES_PER_DAY)
      hours, minutes = minutes.divmod(MINUTES_PER_HOUR)
    else
      hours, minutes = num.divmod(MINUTES_PER_HOUR)
    end
  when "before"
    if num.abs > MINUTES_PER_DAY
      divided, minutes = (num + MINUTES_PER_DAY).divmod(MINUTES_PER_DAY)
      hours, minutes = minutes.divmod(MINUTES_PER_HOUR)
    else
      hours, minutes = num.divmod(MINUTES_PER_HOUR)
    end
  end

  hours += HOURS_PER_DAY if hours.negative?

  '%02d%s%02d' % [hours, ":", minutes]
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"