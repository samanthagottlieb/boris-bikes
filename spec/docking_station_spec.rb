require_relative '../lib/docking_station'
require_relative '../lib/bike'

describe DockingStation do
  it 'creates new DockingStation instance' do
    expect(subject).to be_instance_of(DockingStation)
  end

  it 'create instance able to respond to release_bike method' do
    expect(subject).to respond_to(:release_bike)
  end

  context 'when release_bike is called' do
    it 'returns a Bike instance' do
      expect(subject.release_bike).to be_instance_of(Bike)
    end
  end
end
