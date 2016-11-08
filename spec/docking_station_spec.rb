require 'docking_station'
require 'bike'

describe DockingStation do
  it { is_expected.to respond_to ("release_bike") }

  it 'makes sure that the bike is working' do
    bike = subject.release_bike
    expect(bike.working?)
  end

  it 'docks bikes' do
    expect(subject.dock_bike('bmx')).to eq 'bmx'
  end

  it 'shows bike name' do
    expect(subject.bike).to eq @bike
  end
end
