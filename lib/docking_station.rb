#require './lib/bike'

class DockingStation
  attr_accessor :all_bikes


  def initialize
    @all_bikes = []
  end

  def generate_bike
    Bike.new
  end

  def release_bike
    fail "Error: No Bikes in Docking Station" if docking_station_empty?
    @all_bikes.pop
  end

  def dock_bike(bike_name)
   fail "Error: Docking Station Full" if docking_station_full?
    @all_bikes << bike_name
    @all_bikes
  end

  def bike_count
    @all_bikes.length
  end

  private

  def docking_station_empty?
    bike_count == 0
  end

  def docking_station_full?
    bike_count >= 20
  end

end
