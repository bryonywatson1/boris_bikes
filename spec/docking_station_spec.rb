require 'docking_station'

describe DockingStation do
  it {expect(docking_station.respond_to(release_bike)).to eq true} 
end
