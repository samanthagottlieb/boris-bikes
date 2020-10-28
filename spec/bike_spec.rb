require_relative '../lib/bike'

describe Bike do
  context 'when working? is called' do
    it 'responds to the method' do
      expect(subject).to respond_to(:working?)
    end
  end

  context 'when working? is called' do
    it 'returns true' do
      expect(subject.working?).to eq(true)
    end
  end
end
