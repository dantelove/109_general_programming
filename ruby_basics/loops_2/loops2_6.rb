# loops2_6.rb

names = ['Sally', 'Joe', 'Lisa', 'Henry']

# loop do
#   puts names.shift
#   break if names.empty?
# end

# further exploration

loop do
  puts names.pop
  break if names.empty?
end