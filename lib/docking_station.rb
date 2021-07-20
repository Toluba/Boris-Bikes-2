class DockingStation
  def release_bike
    raise 'No bikes available' #Both raise and fail don't work (runtimeError)
    unless @bike 
      @bike
    end
  end

  attr_reader :bike
  def docking_bikes(bike)
    @bike = bike
  end
end

class Bike 
  def working?

  end
end