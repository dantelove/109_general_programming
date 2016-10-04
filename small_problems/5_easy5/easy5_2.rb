# easy5_2.rb

# The time of day can be represented as the number of minutes before or after 
# midnight. If the number of minutes is positive, the time is after midnight. 
# If the number of minutes is negative, the time is before midnight.

# Write a method that takes a time using this minute-based format and returns 
# the time of day in 24 hour format (hh:mm). Your method should work with any 
# integer input.

def time_of_day(num)
  hours = (0..23).to_a
  minutes = (0..59).to_a
  
  case num <=> 0
  when -1
    updated_num = num
    loop do 
      break if updated_num.positive?
      updated_num += 1440
    end
    "#{format('%02d', hours[updated_num / 60])}:" +
    "#{format('%02d', minutes[updated_num % 60])}"
  when 0
    "#{format('%02d',hours[0])}:#{format('%02d', minutes[0])}"
  when 1
    updated_num = num
    loop do 
      break if updated_num <= 1440
      updated_num -= 1440
    end
    "#{format('%02d', hours[updated_num/60])}:" +
    "#{format('%02d', minutes[updated_num % 60])}"
  end
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"