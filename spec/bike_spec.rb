require "./lib/bike"

describe Bike do
  bike = Bike.new
  it { is_expected.to respond_to(:working?) }
  #expect the bike to be working

  it "should return false if bike is not working" do
    expect(bike.working?("broken")).to eq false
  end

end
