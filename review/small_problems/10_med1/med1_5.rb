# med1_5.rb

# Write a method that displays a 4-pointed diamond in an n x n grid, where n is 
# an odd integer that is supplied as an argument to the method. You may 
# assume that the argument will always be an odd integer.

def diamond(num)
  spaces = (num - 1) / 2
  stars = 1

  loop do
    puts " "*spaces + "*"*stars + " "*spaces
    break if stars == num
    spaces -= 1
    stars += 2
  end

  unless stars == 1
    loop do
      stars -= 2
      spaces += 1
      puts " "*spaces + "*"*stars + " "*spaces
      break if stars == 1
    end
  end
end

diamond(1)
diamond(3)
diamond(9)