require './lib/docking_station'

describe 'DockingStation' do
  it 'creates new DockingStation instance' do
    expect(docking_station = DockingStation.new).to eq docking_station
  end
end

describe 'DockingStation instances to respond to release_bike method' do
  it 'create instance able to respond to release_bike method' do
    expect(DockingStation.new).to respond_to(:release_bike)
  end
end
