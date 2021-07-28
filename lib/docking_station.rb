require "./lib/bike.rb"

class DockingStation
  attr_accessor :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    @bikes.last if @bikes != []
  end

  def dock bike
    @bikes << bike
  end
end