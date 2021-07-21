class DockingStation
  attr_reader :bike
  def release_bike
    fail 'No bikes available' unless @bike
    @bike
    # raise 'No bikes available' #Both raise and fail don't work (runtimeError)
    # unless @bike 
    #   @bike
    # end
  end

  def docking_bikes(bike)
    @bike = bike
  end

end 

class Bike 
  def working?
    true
  end
end