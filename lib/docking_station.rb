require_relative 'bike'

class DockingStation
    DEFAULT_CAPACITY = 20
def initialize
  @capacity = []
end

def release_bike
  fail 'No bikes available' if empty?
  @capacity.pop
end


def dock(bike)
  raise "Station full - come back later" if full?
  @capacity << bike
end


private

def empty?
  @capacity.empty?
end

def full?
  @capacity.count >= DEFAULT_CAPACITY
end

end
