# easy6_ten.rb

# Write a method that takes a positive integer, n, as an argument, 
# and displays a right triangle whose sides each have n stars. The 
# hypotenuse of the triangle (the diagonal side in the images below) 
# should have one end at the lower-left of the triangle, and the other 
# end at the upper-right.

def triangle(num)
  stars = 1
  spaces = num - 1

  loop do
    puts " "*spaces + "*"*stars
    break if stars == num
    spaces -= 1
    stars += 1
  end
end

triangle(5)
triangle(9)