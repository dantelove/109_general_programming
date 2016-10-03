# easy4_8.rb

# Write a method that takes a String of digits, and returns the appropriate number 
# as an integer. The String may have a leading + or - sign; if the first character 
# is a +, your method should return a positive number; if it is a -, your method 
# should return a negative number. If no sign is given, you should return a 
# positive number.

def string_into_integer(string)
  hash = {"0"=> 0, "1"=>1, "2"=> 2, "3"=>3, "4"=>4,
          "5"=>5, "6"=>6, "7"=>7, "8"=>8, "9"=> 9}
  result_array = []
  result_integer = 0
  string.chars.each do |char|
    result_array << hash[char]
  end
  
  reversed_array = result_array.reverse

  reversed_array.each_with_index do |num, idx|
    result_integer += num * 10 ** idx
  end

  result_integer
end

def string_to_signed_integer(string)
  case 
  when string.start_with?("+")
    string.delete!("+")
    string_into_integer(string)
  when string.start_with?("-")
    string.delete!("-")
    - string_into_integer(string)
  else
    string_into_integer(string)
  end
end

p string_to_signed_integer('4321')# == 4321
p string_to_signed_integer('-570') #== -570
p string_to_signed_integer('+100') #== 100
