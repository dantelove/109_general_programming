# easy7_4.rb

# Write a method that takes a string as an argument and returns a new string 
# in which every uppercase letter is replaced by its lowercase version, and 
# every lowercase letter by its uppercase version. All other characters 
# should be unchanged.

# You may not use String#swapcase; write your own version of this method.

def swapcase(string)
  results = []

  string.chars.each do |char|
    if char =~ /[A-Z]/
      results << char.downcase
    elsif char =~ /[a-z]/
      results << char.upcase
    else
      results << char
    end
  end

  results.join("")
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'