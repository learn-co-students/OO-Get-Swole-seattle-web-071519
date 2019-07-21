class Gym
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    #get a list of all memberships at a gym
    #iterate through list of all memberships, select those with 
    #gym instance equal to specific gym
    Membership.all.select do |membership|
      membership.gym == self
    end
  end

  def lifters
    #get a list of all lifters with memberships at the gym
    #call our memberships instance method to get a list of all
    #memberships for this gym, then collect the lifters attached
    #to each membership instance 
    self.memberships.collect do |membership|
      membership.lifter
    end
  end

  def list_members
    #list the names of the lifters with a membership
    self.lifters.collect do |lifter|
      puts lifter.name
      lifter.name
    end
  end

  def combined_lift_total
    #sum up the lift_totals of all lifters for a specifc gym
    self.lifters.collect do |lifter|
      lifter.lift_total
    end.sum
  end
end
