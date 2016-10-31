# med2_5.rb

# A triangle is classified as follows:

# equilateral All 3 sides are of equal length
# isosceles 2 sides are of equal length, while the 3rd is different
# scalene All 3 sides are of different length

# To be a valid triangle, the sum of the lengths of the two shortest sides 
# must be greater than the length of the longest side, and all sides must 
# have lengths greater than 0: if either of these conditions is not satisfied, 
# the triangle is invalid.

# Write a method that takes the lengths of the 3 sides of a triangle as 
# arguments, and returns a symbol :equilateral, :isosceles, :scalene, or 
# :invalid depending on whether the triangle is equilateral, isosceles, 
# scalene, or invalid.

def valid_triangle?(s1, s2, s3)
  side1, side2, side3 = [s1, s2, s3].sort

  side1 + side2 > side3 ? true : false
end

def triangle(side1, side2, side3)
  s1, s2, s3 = [side1, side2, side3].sort
  return :invalid if s1 == 0 || s2 == 0 || s3 == 0
  return :invalid unless valid_triangle?(side1, side2, side3)

  if s1 == s2 && s2 == s3
    :equilateral
  elsif s1 == s2 ||
        s2 == s3 ||
        s3 == s1 
    :isosceles
  elsif s1 != s2 &&
        s2 != s3 &&
        s1 != s3
    :scalene
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid

# p valid_triangle?(3,3,1.5)
# p valid_triangle?(3,1, 1)