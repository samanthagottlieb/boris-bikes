class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    raise 'No bikes availabile' if @bikes.empty?
    Bike.new
  end

  def dock
    @bikes << Bike.new
  end
end
