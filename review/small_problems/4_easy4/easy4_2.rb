# easy4_2.rb

# Write a method that takes a year as input and returns the century. The return 
# value should be a string that begins with the century number, and ends with st, 
# d, rd, or th as appropriate for that number.

# New centuries begin in years that end with 01. So, the years 1901-2000 comprise 
# the 20th century.

def century(year)
  if year % 100 == 0
    cent = year / 100
  else 
    cent = year / 100 + 1
  end

  cent = cent.to_s

  case
  when cent.end_with?("11") then cent << "th"
  when cent.end_with?("12") then cent << "th"
  when cent.end_with?("13") then cent << "th"
  when cent.end_with?("1" ) then cent << "st"
  when cent.end_with?("2" ) then cent << "nd"
  when cent.end_with?("3" ) then cent << "rd"
  else                           cent << "th"
  end

  cent
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