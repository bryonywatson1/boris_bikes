require "./lib/docking_station"
require "./lib/bike"

describe DockingStation do
  subject(:station){described_class.new}
  it { is_expected.to respond_to(:release_bike) }

  it 'raises an error when there are no available bikes' do
    expect { subject.release_bike }.to raise_error("Error: No Bikes in Docking Station")
  end

  it 'releases working bikes' do
    bike = station.generate_bike
    expect(bike.working?)
  end

  it { is_expected.to respond_to(:dock_bike).with(1).argument }

  it 'docks a bike named bmx' do
    expect(station.dock_bike('bmx')).to eq ['bmx']
  end

  it 'checks for available bikes' do
    is_expected.to respond_to(:bike_count)
  end


  it 'adds bike name to array when bike is docked' do
    station.dock_bike("Jenna")
    expect(station.bike_count).to eq 1
  end

  it 'check if docking station capacity is 20 bikes' do
    DockingStation::DEFAULT_CAPACITY.times { station.dock_bike('bike')}
    expect{(station.dock_bike('21st bike'))}.to raise_error("Error: Docking Station Full")
  end

end
