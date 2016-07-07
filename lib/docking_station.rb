require_relative 'bike'

class Docking_station
  attr_reader :bike
  def release_bike
      raise "No bikes available" unless @bike
      @bike
  end
  def dock(bike)
    fail "Docking station full!" if @bike != nil
    @bike = bike
  end
end
