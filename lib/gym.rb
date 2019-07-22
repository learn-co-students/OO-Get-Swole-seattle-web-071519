class Gym
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def Gym.all
    @@all
  end

  def memberships
    # Get a list of all memberships at a specific gym
    Membership.all.select do |membership|
      membership.gym == self
    end
  end

  def lifters
    # Get a list of all the lifters that have a membership to a specific gym
    self.memberships.collect do |membership|
      membership.lifter
    end
  end

  def lifter_names
    # Get a list of the names of all lifters that have a membership to that gym
    lifters.collect do |lifter|
      lifter.name
    end
  end

  def lift_total
    # Get the combined lift total of every lifter has a membership to that gym
    totals = self.lifters.collect do |lifter|
      lifter.lift_total
    end
    totals.sum
  end
end
