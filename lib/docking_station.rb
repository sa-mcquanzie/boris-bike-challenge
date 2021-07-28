require "./lib/bike.rb"

class DockingStation
  attr_accessor :bikes

  def initialize
    @bikes = []
  end

  def dock_empty?
    @bikes.empty?
  end

  def release_bike
    if dock_empty? 
      raise "No bikes are available" 
    else @bikes.last
    end
  end

  def dock_full?
    @bikes.size >= 20
  end

  def dock bike
   if dock_full? 
    raise "Docking station is full" 
   else @bikes << bike
   end
  end
end