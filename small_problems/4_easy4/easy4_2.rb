# easy4_2.rb

# Write a method that takes a year as input and returns the century. The return 
# value should be a string that begins with the century number, and ends with st, 
# nd, rd, or th as appropriate for that number.

SUFFIXES = {
            0=> "th", 1=> "st", 2=> "nd", 3=> "rd", 4=> "th", 5=> "th", 
            6=> "th", 7=> "th", 8=> "th", 9=> "th", 10=> "th", 11=> "th", 
            12=>"th", 13=> "th", 14=> "th"
            }

def century(year)
  century_num =    if year % 100 == 0
                      year / 100
                   else
                      (year / 100) + 1
                   end
                 
if century_num > 100
    suffix = century_num - 100
    "#{century_num}#{SUFFIXES[suffix]}"
  elsif century_num < 15
    "#{century_num}#{SUFFIXES[century_num.to_s.chars.last(2).join("").to_i]}"
  else
    "#{century_num}#{SUFFIXES[century_num.to_s.chars.last.to_i]}"
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