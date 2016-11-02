# easy4_2.rb

# Write a method that takes a year as input and returns the century. 
# The return value should be a string that begins with the century number, 
# and ends with st, nd, rd, or th as appropriate for that number.

# New centuries begin in years that end with 01. So, the years 1901-2000 
# comprise the 20th century.

def what_century(year)
  year % 100 == 0 ? year / 100 : year / 100 + 1
end

def century(year)
  century = what_century(year).to_s

  if century[-1] == "1" && century[-2] != "1"
    century + "st"
  elsif century[-1] == "2" && century[-2] != "1"
    century + "nd"
  elsif century[-1] == "3" && century[-2] != "1"
    century + "rd"
  else
    century + "th"
  end
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'