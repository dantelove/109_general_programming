# easy7_6.rb

# Modify the method from the previous exercise so it ignores non-alphabetic 
# characters when determining whether it should uppercase or lowercase each 
# letter. The non-alphabetic characters should still be included in the return 
# value; they just don't count when toggling the desired case.

def staggered_case(string)
  results = []
  n = 0

  string.split(/(W)/).each do |word|
    results << word.chars.map do |char|
      if char =~ /[^A-Za-z]/
        char
      elsif n % 2 == 0
        n += 1
        char.upcase
      else
        n += 1
        char.downcase
      end
    end
  end

  results.join
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

