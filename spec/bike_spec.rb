require "bike_class.rb"

describe Bike do
  it { is_expected.to respond_to :working? }
end
