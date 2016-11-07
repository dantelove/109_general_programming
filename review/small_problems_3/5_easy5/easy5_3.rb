# easy5_3.rb

# Write two methods that each take a time of day in 24 hour format, 
# and return the number of minutes before and after midnight, respectively. 
# Both methods should return a value in the range 0..1439.

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = MINUTES_PER_HOUR * HOURS_PER_DAY

def after_midnight(string)
  array = string.split(":").map(&:to_i)
  
  hours, minutes = array
  
  total_minutes = hours * MINUTES_PER_HOUR + minutes
  
  total_minutes < 1440 ? total_minutes : 0
end

def before_midnight(string)
  array = string.split(":").map(&:to_i)
  
  hours, minutes = array
  
  total_minutes = hours * MINUTES_PER_HOUR + minutes
  
  total_minutes == 0 ? 0 : MINUTES_PER_DAY - total_minutes
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0