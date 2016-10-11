# med1_5.rb

# Write a method that displays a 4-pointed diamond in an n x n grid, where n is an 
# odd integer that is supplied as an argument to the method. You may assume that the 
# argument will always be an odd integer.

def diamond(num)
  stars = 1
  spaces = (num - 1)/2
  loop do
    break if spaces < 0
    puts " "*spaces + "*"*stars + " "*spaces
    stars += 2
    spaces -= 1
  end
 
  stars = num - 2
  spaces = 1
  loop do 
    break if stars < 0
    puts " "*spaces + "*"*stars + " "*spaces
    stars -= 2
    spaces += 1
  end
end

diamond(1)
diamond(3)
diamond(9)