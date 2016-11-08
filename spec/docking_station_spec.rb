require 'docking_station'
require 'bike'

describe DockingStation do
  it { is_expected.to respond_to ("release_bike") }

  it 'makes sure that the bike is working' do
  bike = subject.release_bike("wheee")
  expect(bike.working?)
  end
end
