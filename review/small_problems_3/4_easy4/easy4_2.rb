# easy4_2.rb

# Write a method that takes a year as input and returns the century. The return 
# value should be a string that begins with the century number, and ends with 
# st, nd, rd, or th as appropriate for that number.

def century(year)
  year % 100 == 0 ? cent = (year / 100).to_s : cent = (year / 100 + 1).to_s
  
  if cent[-1] == "1" && cent[-2] != "1"
    cent + "st"
  elsif cent[-1] == "2" && cent[-2] != "1"
    cent + "nd"
  elsif cent[-1] == "3" && cent[-2] != "1"
    cent + "rd"
  else
    cent + "th"
  end
end

p century(2000) #== '20th'
p century(2001) #== '21st'
p century(1965) #== '20th'
p century(256) #== '3rd'
p century(5) #== '1st'
p century(10103) #== '102nd'
p century(1052) #== '11th'
p century(1127) #== '12th'
p century(11201) #== '113th'