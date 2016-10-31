# med2_7.rb

# Write a method that returns the number of Friday the 13ths in the year 
# passed in as an argument. You may assume that the year is greater than 
# 1752 (when the modern Gregorian Calendar was adopted by the United Kingdom), 
# and you may assume that the same calendar will remain in use for the 
# foreseeable future.

require 'date'

def friday_13th?(year)
  n = 1
  friday_the_thirteenth = 0

  11.times do
    friday_the_thirteenth += 1 if Date.new(year, n, 13).friday?
    n += 1
  end

  friday_the_thirteenth
end

p friday_13th?(2015) == 3
p friday_13th?(1986) == 1
