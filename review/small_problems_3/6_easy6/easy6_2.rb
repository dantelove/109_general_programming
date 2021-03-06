# easy6_2.rb

# Write a method that takes an array of strings, and returns an array of the 
# same string values, except with the vowels (a, e, i, o, u) removed.

def remove_vowels(array)
  array.map { |word| word.delete('AEIOUaeiou') }
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']