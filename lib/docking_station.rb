class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    Bike.new
  end

  def dock
    @bikes << Bike.new
  end
end
