require_relative './membership.rb'
require_relative './gym.rb'

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

  def memberships
    Membership.all.select {|membership| membership.lifter == self}
  end

  def gyms
    list = []
    Membership.all.each do |membership|
      if membership.lifter == self
         list << membership.gym.name
      end
    end
    list
  end

  def costs
    cost = []
    Membership.all.each do |membership|
      if membership.lifter == self
        cost << membership.cost
      end
    end
    cost
  end

  def total_costs
    self.costs.inject {|sum, value| sum += value}
  end

  def self.average_lift
    arr = self.all.map {|lifter| lifter.lift_total}
    arr.inject {|sum, i| sum + i} / arr.size
  end

end
