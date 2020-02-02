# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'
require 'pp'

# test code goes here

# Lifters init
bob = Lifter.new("Bob", 150)
dave = Lifter.new("Dave", 200)
mike = Lifter.new("Mike", 250)
steve = Lifter.new("Steve", 300)

# Gyms init
g1 = Gym.new("Bannatynes")
g2 = Gym.new("Puregym")
g3 = Gym.new("Gym24")
g4 = Gym.new("Virgin")

# Memberships init
m1 = Membership.new(dave, 30, g1)
m2 = Membership.new(mike, 50, g2)
m3 = Membership.new(bob, 40, g3)
m4 = Membership.new(steve, 50, g2)
m5 = Membership.new(steve, 40, g4)


# Lifters
Lifter.all
steve.memberships
steve.gyms
Lifter.average_lift
steve.total_costs

# Membership
Membership.all

# Gyms
Gym.all
g2.members
g2.lifters
g2.lifter_names
pp g2.lift_total


# binding.pry

 puts "Gains!"
