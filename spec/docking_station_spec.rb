require 'docking_station'
require "./lib/bike.rb"

describe DockingStation do
  before(:each) do 
    @docking_station = DockingStation.new 
  end
  
  it 'responds to release_bike' do
    expect(@docking_station).to respond_to('release_bike')
  end

  it 'responds to dock' do
    expect(@docking_station).to respond_to('dock')
  end

  it "should get a bike" do
    expect(@docking_station.release_bike.instance_of?(Bike)).to eq(true)
  end

  it "should get a working bike" do
    expect(@docking_station.release_bike.working?).to eq(true)
  end

  it 'should return an array of docked bikes' do
    expect(@docking_station.bikes.instance_of?(Array)).to eq(true)
  end




  # one liner version of the above test
  # subject { @docking_station }
  # it { is_expected.to respond_to 'release_bike' }

end








