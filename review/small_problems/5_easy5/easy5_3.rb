#easy5_3.rb

# As seen in the previous exercise, the time of day can be represented as the 
# number of minutes before or after midnight. If the number of minutes is 
# positive, the time is after midnight. If the number of minutes is negative, 
# the time is before midnight.

# Write two methods that each take a time of day in 24 hour format, and return 
# the number of minutes before and after midnight, respectively. Both methods 
# should return a value in the range 0..1439.

# You may not use ruby's Date and Time methods.

HOURS_IN_A_DAY = 24
MINUTES_IN_AN_HOUR = 60
MINUTES_IN_A_DAY = HOURS_IN_A_DAY * MINUTES_IN_AN_HOUR

def after_midnight(string)
  array = string.split(":").map(&:to_i)

  if (0...1440).include?(array[0]*MINUTES_IN_AN_HOUR + array[1])
    (array[0]*MINUTES_IN_AN_HOUR + array[1])
  else
    0
  end
end

def before_midnight(string)
  array = string.split(":").map(&:to_i)

  if (0...1440).include?(MINUTES_IN_A_DAY - (array[0]*MINUTES_IN_AN_HOUR + array[1]))
    (MINUTES_IN_A_DAY - (array[0]*MINUTES_IN_AN_HOUR + array[1]))
  else
    0
  end
end

p after_midnight('00:00') #== 0
p before_midnight('00:00') #== 0
p after_midnight('12:34') #== 754
p before_midnight('12:34') #== 686
p after_midnight('24:00') #== 0
p before_midnight('24:00') #== 0