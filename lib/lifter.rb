class Lifter
  attr_reader :name, :lift_total
  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def Lifter.all
    @@all
  end

  def memberships
    #Get a list of all the memberships that a specific lifter has
    Membership.all.select do |membership|
      membership.lifter == self
    end
  end

  def gyms
    # Get a list of all the gyms that a specific lifter has memberships to
    self.memberships.collect do |membership|
      membership.gym
    end
  end

  def Lifter.avg_lift_total
    # Get the average lift total of all lifters
    totals = Lifter.all.collect do |lifter|
      lifter.lift_total
    end
    totals.sum / totals.count
  end

  def membership_budget
    # Get the total cost of a specific lifter's gym memberships
    amounts = self.memberships.collect do |membership|
      membership.cost
    end
    amounts.sum
  end

  def join_gym(gym, cost)
    # Given a gym and a membership cost, sign a specific lifter up for a new gym
    Membership.new(cost, self, gym)
  end

end
