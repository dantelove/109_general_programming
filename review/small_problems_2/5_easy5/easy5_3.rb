# easy5_3.rb

# As seen in the previous exercise, the time of day can be represented as the 
# number of minutes before or after midnight. If the number of minutes is 
# positive, the time is after midnight. If the number of minutes is negative, 
# the time is before midnight.

# Write two methods that each take a time of day in 24 hour format, and return 
# the number of minutes before and after midnight, respectively. Both methods 
# should return a value in the range 0..1439.

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = MINUTES_PER_HOUR * HOURS_PER_DAY

def after_midnight(string)
  hours, minutes = string.split(":").map(&:to_i)
  after_midnight = hours*MINUTES_PER_HOUR + minutes
  after_midnight < MINUTES_PER_DAY ? after_midnight : 0
end

def before_midnight(string)
  hours, minutes = string.split(":").map(&:to_i)
  before_midnight = hours*MINUTES_PER_HOUR + minutes
  before_midnight.zero? ? 0 : MINUTES_PER_DAY - before_midnight
end

p after_midnight('00:00') #== 0
p before_midnight('00:00') #== 0
p after_midnight('12:34') #== 754
p before_midnight('12:34') #== 686
p after_midnight('24:00') #== 0
p before_midnight('24:00') #== 0