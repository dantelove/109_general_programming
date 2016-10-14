# med2_5.rb

# A triangle is classified as follows:

# equilateral All 3 sides are of equal length
# isosceles 2 sides are of equal length, while the 3rd is different
# scalene All 3 sides are of different length

# To be a valid triangle, the sum of the lengths of the two shortest sides must 
# be greater than the length of the longest side, and all sides must have lengths 
# greater than 0: if either of these conditions is not satisfied, the triangle is 
# invalid.

# Write a method that takes the lengths of the 3 sides of a triangle as arguments, 
# and returns a symbol :equilateral, :isosceles, :scalene, or :invalid depending 
# on whether the triangle is equilateral, isosceles, scalene, or invalid.

def triangle(s1, s2, s3)
  case 
  when s1 == s2 && s2 == s3
    :equilateral
  when s1 == s2 || s1 == s3 && (s1 > 0 && s2 > 0 && s3 > 0)
    :isosceles
  when s1 > 0 && s2 > 0 && s3 > 0
    a = [s1, s2, s3].sort
      if a[0] + a[1] > a[2]
        :scalene
      else
        :invalid
      end
  else
    :invalid
  end
end

p triangle(3, 3, 3) #== :equilateral
p triangle(3, 3, 1.5) #== :isosceles
p triangle(3, 4, 5) #== :scalene
p triangle(0, 3, 3) #== :invalid
p triangle(3, 1, 1) #== :invalid