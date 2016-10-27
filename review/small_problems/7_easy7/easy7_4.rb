#easy7_4.rb

# Write a method that takes a string as an argument and returns a new 
# string in which every uppercase letter is replaced by its lowercase 
# version, and every lowercase letter by its uppercase version. All 
# other characters should be unchanged.

def swapcase(string)
  swap_string =   string.chars.map do |char|
                    if char =~ /[a-z]/
                      char.upcase
                    elsif char =~ /[A-Z]/
                      char.downcase
                    else
                      char
                    end
                  end

  swap_string.join
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'