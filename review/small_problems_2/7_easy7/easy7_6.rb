# easy7_6.rb

# Modify the method from the previous exercise so it ignores non-alphabetic 
# characters when determining whether it should uppercase or lowercase each 
# letter. The non-alphabetic characters should still be included in the return 
# value; they just don't count when toggling the desired case.

# def staggered_case(string)
#   string.downcase.chars.each_with_index.map { |x, idx| idx.even? ? x.upcase : x }.join
# end

def staggered_case(string)
   string_array = string.downcase.chars

   n = 0

   string_array. each do |x|
    if x =~ /[0-9]/ || x =~ /[^A-Za-z]/
      next
    elsif x =~ /[A-Za-z]/
      x.upcase! if n.even?
      n += 1
    end
  end

  string_array.join
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
