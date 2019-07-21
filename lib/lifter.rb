class Lifter
  attr_reader :name, :lift_total
  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end

  def gyms
    #get a list of all gyms that a lifter has memberships to
    Membership.all.collect do |membership|
      if membership.lifter == self
        membership.gym
      end
    end
  end

  def self.average_lift_total
    sum = 0
    self.all.each do |lifter|
      sum += lifter.lift_total
    end
    sum / (self.all.length * 1.0)
  end

  def membership_cost
    #get the total cost of all gym memberships for a lifter
    Membership.all.collect do |membership|
      if membership.lifter == self
        membership.cost
      end
    end.sum
  end

  def sign_up(gym, membership_cost)
    #sign lifter up at a new gym
    # prob new_membership = Membership.new(cost)
    #trying with new parameters on membership initialize (gym +self )
    new_membership = Membership.new(membership_cost, gym, self)
  end
end
