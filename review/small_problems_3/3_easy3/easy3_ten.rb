# easy3_ten.rb

# Write a method that returns true if its integer argument is palindromic, 
# false otherwise. A palindromic number reads the same forwards and backwards.

def palindrome?(string)
  string == string.reverse
end

def palindromic_number?(num)
  palindrome?(num.to_s)
end

p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true