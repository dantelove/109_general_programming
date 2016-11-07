# easy8_5.rb

# Write a method that returns a list of all substrings of a string that are 
# palindromic. That is, each substring must consist of the same sequence of 
# characters forwards as it does backwards. The return value should be arranged 
# in the same sequence as the substrings appear in the string. Duplicate 
# palindromes should be included multiple times.

# You may (and should) use the substrings method you wrote in the previous 
# exercise.

# For the purposes of this exercise, you should consider all characters and 
# pay attention to case; that is, "AbcbA" is a palindrome, but neither "Abcba" 
# nor "Abc-bA" are. In addition, assume that single characters are not 
# palindromes.

def substrings_at_start(string)
  substring = string
  results = []
  n = -1
  
  string.length.times do
    results << substring
    substring = substring.chop
  end
  
  results.reverse
end

def substrings(string)
  results = []
  
  string.length.times do
    results << substrings_at_start(string)
    string = string.reverse.chop.reverse
  end
  
  results.flatten
end

def palindrome?(string)
  string == string.reverse && string.length > 1
end

def palindromes(string)
  substrings(string).select{ |x| palindrome?(x) }
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]