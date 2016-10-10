# med1_5.rb

# Write a method that displays a 4-pointed diamond in an n x n grid, where n is an 
# odd integer that is supplied as an argument to the method. You may assume that the 
# argument will always be an odd integer.

def diamond(num)
  stars = 1
  spaces = num - 2
  num.times do
    break if spaces < 0
    puts " "*(spaces/2 + 1) + "*"*stars + " "*(spaces/2 + 1)
    stars += 2
    spaces -= 2
  end

  stars = num - 4
  spaces = 2
  num.times do
    break if stars < 0
    puts " "*(spaces/2 + 1) + "*"*stars + " "*(spaces/2 + 1)
    stars -= 2
    spaces += 2
  end
end

diamond(1)
diamond(3)
diamond(9)