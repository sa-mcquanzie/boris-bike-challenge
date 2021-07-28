require "./lib/bike.rb"

class DockingStation
  attr_accessor :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    raise "No bikes are available" if @bikes.empty?
    @bikes.last
  end

  def dock bike
    raise "Docking station is full" if @bikes.size >= 1
    @bikes << bike
  end
end