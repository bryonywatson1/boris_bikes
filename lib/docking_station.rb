#require './lib/bike'

class DockingStation
  attr_accessor :bike
  attr_accessor :all_bikes


  def initialize
    @all_bikes = []
  end

  def generate_bike
    Bike.new
  end

  def release_bike
    fail "Error: No Bikes in Docking Station" if @all_bikes.empty?
    @all_bikes.pop
  end

  def dock_bike(bike_name)
   fail "Error: Docking Station Full" if @all_bikes.length >= 20
    @all_bikes << bike_name
    @bike = bike_name
    @all_bikes
  end

  def bike_count
    @all_bikes.length
  end

end
