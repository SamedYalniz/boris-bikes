require_relative 'bike'

class Docking_station
  attr_reader :bikes
  def initialize
    @bikes = []
  end
  def release_bike
      raise "No bikes available" if @bikes.empty?
      @bikes[0]
  end
  def dock(bike)
    fail "Docking station full!" if @bikes.length == 20
    @bikes << bike
    @bikes[0]
  end
end
