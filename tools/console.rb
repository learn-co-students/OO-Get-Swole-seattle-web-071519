# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

l1 = Lifter.new("Broseph", 300)
l2 = Lifter.new("Chadwick", 400)
l3 = Lifter.new("Ramon", 200)
l4 = Lifter.new("Sandra", 350)
l5 = Lifter.new("Joanna", 410)
l6 = Lifter.new("Matilda", 500)

g1 = Gym.new("Gym 1")
g2 = Gym.new("Gym 2")
g3 = Gym.new("Gym 3")
g4 = Gym.new("Gym 4")

m1 = Membership.new(10, l1, g1)
m2 = Membership.new(130, l1, g2)
m3 = Membership.new(15, l1, g3)
m4 = Membership.new(20, l2, g1)
m5 = Membership.new(45, l2, g4)
m6 = Membership.new(56, l3, g1)
m7 = Membership.new(100, l4, g3)
m8 = Membership.new(10, l5, g2)
m9 = Membership.new(10, l6, g4)

binding.pry

puts "Gains!"
