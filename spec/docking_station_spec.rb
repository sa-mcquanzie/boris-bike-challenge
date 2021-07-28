require 'docking_station'
require "./lib/bike.rb"

describe DockingStation do
  before(:each) do 
    @docking_station = DockingStation.new
    @bike = Bike.new
    @docking_station.bikes.push(@bike)
  end
  
  it 'responds to release_bike' do
    expect(@docking_station).to respond_to('release_bike')
  end

  it 'responds to dock' do
    expect(@docking_station).to respond_to('dock')
  end

  it "should check if there are bikes to be released" do
    @docking_station.bikes = []
    raise_error if expect(@docking_station.release_bike).to eq(nil)
  end

  it "should get a bike" do
    expect(@docking_station.release_bike.instance_of?(Bike)).to eq(true)
  end

  it "should release a bike from bikes array" do
    expect(@docking_station.release_bike).to eq(@docking_station.bikes.last)
  end

  it "should get a working bike" do
    expect(@docking_station.release_bike.working?).to eq(true)
  end

  it 'should return an array of docked bikes' do
    expect(@docking_station.bikes.instance_of?(Array)).to eq(true)
  end

  it "should add bike to bikes array" do
    @docking_station.dock(@bike)
    expect(@docking_station.bikes.pop).to eq(@bike)
  end




  # one liner version of the above test
  # subject { @docking_station }
  # it { is_expected.to respond_to 'release_bike' }

end








