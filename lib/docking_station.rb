class DockingStation
  def release_bike
    Bike.new 
  end

  attr_reader :bike
  def docking_bikes(bike)
    @bike = bike
    #Bike class?
  end
end

class Bike #instance
  def working?

  end
end