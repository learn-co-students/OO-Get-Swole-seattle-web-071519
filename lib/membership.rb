class Membership
  attr_reader :cost, :gym, :lifter
  @@all = []
  #trying out breaking gyms and lifters into class variables 
  #for easier tracking
  #UPDATE: turns out I didn't need these variables
  #I was able to get all the info I needed using @@all 
  @@gyms = []
  @@lifters = []

  #trying out adding gym + lifter at initialization
  def initialize(cost, gym, lifter)
    @cost = cost
    @gym = gym
    @lifter = lifter
    @@all << self
    @@gyms << gym
    @@lifters << lifter
  end

  def self.all
    @@all
  end

  def self.gyms
    @@gyms
  end

  def self.lifters
    @@lifters
  end
end
