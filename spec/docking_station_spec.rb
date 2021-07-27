require 'docking_station'

describe 'DockingStation' do
  before(:each) do 
    @docking_station = DockingStation.new 
  end
  
  it 'responds to release_bike' do
    expect(@docking_station).to respond_to('release_bike')
  end

  # one liner version of the above test
  subject { @docking_station }
  it { is_expected.to respond_to 'release_bike' }

end








