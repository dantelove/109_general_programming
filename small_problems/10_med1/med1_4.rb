# med1_4.rb

# You have a bank of switches before you numbered from 1 to 1000. Each switch is 
# connected to exactly one light that is initially off. You walk down the row of 
# switches, and turn every one of them on. Then, you go back to the beginning and 
# toggle switches 2, 4, 6, and so on. Repeat this for switches 3, 6, 9, and so on, 
# and keep going until you have been through 1000 repetitions of this process.

# Write a program that determines how many lights are on at the end, and which 
# lights are off.

# Example with 5 lights:

# round 1: every light is turned on
# round 2: lights 2 and 4 are now off; 1, 3, 5 are on
# round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
# round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
# round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
# The result is that 2 lights are left on, lights 1 and 4.

# With 10 lights, 3 lights are left on: lights 1, 4, and 9.

a = (1..1000).to_a

h = Hash[a.collect {|item| [item, true]}]

n = 2

1000.times do 
  h.each do |k,v|
    if k % n == 0
      h[k] = !v
    end
  end
  n += 1
end

p h