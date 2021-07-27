require 'docking_station'

describe 'DockingStation' do
  before(:each) do 
    @docking_station = DockingStation.new 
  end

  it "successfully returns new DockingStation object" do
    # expect(DockingStation.new_method).to eq "hello world"
  end

  it 'responds to release_bike' do
    expect(@docking_station.release_bike).to eq("Hello, World!")
  end
end








