require_relative 'bike'

class DockingStation
  attr_reader :bikes, :capacity
  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    raise 'no bikes available' if empty?
    @bikes.pop
  end

  def dock(bike)
    raise 'docking station full' if full?
    @bikes << bike
  end

  private

  def full?
    @bikes.size >= capacity
  end

  def empty?
    @bikes.empty?
  end

end
