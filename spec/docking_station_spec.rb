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
      subject.dock
      expect(subject.release_bike).to be_instance_of(Bike)
    end
  end

  context 'when dock is called' do
    it 'docks a Bike' do
      expect {subject.dock}.to change {subject.bikes.length}.by(1)
    end
  end

  context 'when bikes array is accessed using attr_reader' do
    it 'returns the bikes array' do
      expect(subject.bikes).to be_instance_of(Array)
    end
  end

  context 'when release_bike is called' do
    it 'raises an error if bikes array is empty' do
      expect { subject.release_bike }.to raise_error(RuntimeError)
    end
  end
end
