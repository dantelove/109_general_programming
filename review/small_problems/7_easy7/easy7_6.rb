# easy7_6.rb

# Modify the method from the previous exercise so it ignores non-alphabetic 
# characters when determining whether it should uppercase or lowercase each 
# letter. The non-alphabetic characters should still be included in the 
# return value; they just don't count when toggling the desired case.

def staggered_case(string)
  chars = string.chars.map(&:downcase)
  n = 0
  m = 0

  results = []

  chars.size.times do
    if n.even? && chars[m] =~ /[A-Za-z]/
      results << chars[m].upcase
      n += 1
      m += 1
    elsif chars[m] =~ /[A-Za-z]/
      results << chars[m]
      n += 1
      m += 1
    else
      results << chars[m]
      m += 1
    end
  end

  results.join
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'