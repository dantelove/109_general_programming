# med1_4.rb

# You have a bank of switches before you numbered from 1 to 1000. 
# Each switch is connected to exactly one light that is initially off. 
# You walk down the row of switches, and turn every one of them on. Then, 
# you go back to the beginning and toggle switches 2, 4, 6, and so on. Repeat 
# this for switches 3, 6, 9, and so on, and keep going until you have been 
# through 1000 repetitions of this process.

# p lights.map {|k,v| k % n == 0 ? lights[k] = !v : lights[k] = v }

lights = {}
n = 1

1000.times do
  lights[n] = false
  n += 1
end

m = 1

1000.times do
  n = 1
  lights.each do 
    lights[n] = !lights[n] if n % m == 0
    n += 1
  end

  m += 1
end

p lights.select { |k,v| v == true }

