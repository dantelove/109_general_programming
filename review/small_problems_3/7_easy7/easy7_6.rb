# easy7_6.rb

# Modify the method from the previous exercise so it ignores non-alphabetic 
# characters when determining whether it should uppercase or lowercase each 
# letter. The non-alphabetic characters should still be included in the 
# return value; they just don't count when toggling the desired case.

# def staggered_case(string)
#   string.downcase.chars.each_with_index.map { |x, idx| idx.even? ? x.upcase : x }.join
# end

def staggered_case(string)
  n = 1
  string = string.downcase.chars
  results = []
  
  string.each do |x|
    if x =~ /[A-za-z]/
      results << x.upcase! if n.odd?
      n += 1
    else
      results << x
    end
  end
  
  string.join
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'