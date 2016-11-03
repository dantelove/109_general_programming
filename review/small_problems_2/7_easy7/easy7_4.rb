# easy7_4.rb

# Write a method that takes a string as an argument and returns a new string 
# in which every uppercase letter is replaced by its lowercase version, and 
# every lowercase letter by its uppercase version. All other characters should 
# be unchanged.

# You may not use String#swapcase; write your own version of this method.

def swapcase(string)
  swapcase_array =    string.chars.map do |x|
                        if x =~ /[A-Z]/
                          x.downcase
                        elsif x =~ /[a-z]/
                          x.upcase
                        else
                          x
                        end
                      end

  swapcase_array.join
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'