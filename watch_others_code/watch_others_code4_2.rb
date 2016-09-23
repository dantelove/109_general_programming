# watch_others_code4_2.rb

# Write a method that returns the number of Friday the 13th in the year
# passed in as an argument. You may assume that the year is greater then
# 1752 (when the modern Gregorian Calendar was adopted by the United Kingdom),
# and you may assume that same calendar will remain in use for the 
# foreseeable future

# Examples:


# Hint: ruby's Date class could be helpful here.

# - look at how to initialize a Date object
# - look at the friday? method

require 'date'

def friday_13th?(year)
  counter = 0
  month = 1

  11.times do 
    day = Date.new(year, month, 13)

    if day.friday?
      counter += 1
    end

    month += 1
  end

  counter
end

p friday_13th?(2015) # -> 3
p friday_13th?(1986) # -> 1
