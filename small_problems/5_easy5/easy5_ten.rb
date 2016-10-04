# easy5_ten.rb

# Write a method that will take a short line of text, and print it within a box.

def print_in_box(string)
  puts "+-" + "-"*string.length + "-+"
  puts "| " + " "*string.length + " |"
  puts "| #{string} |"
  puts "| " + " "*string.length + " |"
  puts "+-" + "-"*string.length + "-+"
end

print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+

print_in_box('')
# +--+
# |  |
# |  |
# |  |
# +--+