class Gym
  attr_reader :lifter, :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def members
    Membership.all.select {|members| members.gym == self}
  end

  def lifters
    self.members.map {|ele| ele.lifter}
  end

  def lifter_names
    self.lifters.map {|ele| ele.name}
  end

  def lift_total
    self.members.map {|ele| ele.lifter.lift_total}.inject {|sum, v| sum += v}
  end
end
