# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
lifter_one = Lifter.new("Ralph", 5000)
lifter_two = Lifter.new("Sonny", 25)
lifter_three = Lifter.new("Stephanie", 200)
lifter_four = Lifter.new("Lucy", 300)

gym_one = Gym.new("Gymm")
gym_two = Gym.new("Test")

binding.pry

puts "Gains!"
