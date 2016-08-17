# 1000 Lights

# You have a bank of switches before you numbered from 1 to 1000. Each switch
#  is connected to exactly one light that is initially off. You walk down the
#   row of switches, and turn every one of them on. Then, you go back to the
#    beginning and toggle switches 2, 4, 6, and so on. Repeat this for
#     switches 3, 6, 9, and so on, and keep going until you have been through
#      1000 repetitions of this process.

# Write a program that determines how many lights are on at the end, and which
#  lights are on.

# Example with 5 lights:

def toggle(switch)
  switch == 1 ? 0 : 1
end

n = 1000
switches = [1] * n

2.upto(n) do |number|
  switches.each_with_index do |switch, idx|
    switches[idx] = toggle(switch) if (idx + 1) % number == 0
  end
end

num_lights_on = switches.count(1)

lights_position = []
switches.each_with_index { |sw, i| lights_position << (i + 1).to_s if sw == 1 }
lights_position = lights_position.join(', ')

puts "The result is that #{num_lights_on} lights are left on,\
 lights #{lights_position}"



# round 1: every light is turned on
# round 2: lights 2 and 4 are now off; 1, 3, 5 are on
# round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
# round 4: lignts 2 and 3 are now off; 1, 4, and 5 are on
# round 5: lights 2, 3, and 5 are now off; 1 and 4 are on

# The result is that 2 lights are left on, lights 1 and 4.

# With 10 lights, 3 lights are left on: lights 1, 4, and 9.