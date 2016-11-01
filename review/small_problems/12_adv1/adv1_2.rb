# adv1_2.rb

# Write a method that displays an 8-pointed star in an nxn grid, where n 
# is an odd integer that is supplied as an argument to the method. 
# The smallest such star you need to handle is a 7x7 grid.

def star(num)
  outside_spaces = 0
  rows = num / 2
  inside_spaces = rows - 1
 
  rows.times do
    puts " "*outside_spaces + "*" + " "*inside_spaces + "*" + 
         " "*inside_spaces + "*" + " "*outside_spaces

    outside_spaces += 1
    inside_spaces -= 1
  end

  puts "*"*num

  rows.times do
    outside_spaces -= 1
    inside_spaces += 1

    puts " "*outside_spaces + "*" + " "*inside_spaces + "*" + 
         " "*inside_spaces + "*" + " "*outside_spaces
  end
end

star(7)
star(9)