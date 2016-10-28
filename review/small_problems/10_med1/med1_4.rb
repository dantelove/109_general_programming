# med1_4.rb

# You have a bank of switches before you numbered from 1 to 1000. Each 
# switch is connected to exactly one light that is initially off. You walk 
# down the row of switches, and turn every one of them on. Then, you go back 
# to the beginning and toggle switches 2, 4, 6, and so on. Repeat this for 
# switches 3, 6, 9, and so on, and keep going until you have been through 1000 
# repetitions of this process.

# Write a program that determines how many lights are on at the end, and which 
# lights are off.

hash = {}
m = 1

1000.times do
  hash[m] = false
  m += 1
end

n = 1

1000.times do
  hash.each do |k,v|
    if k % n == 0
      hash[k] = !v
    end
  end

  n += 1
end

puts hash

