require 'docking_station'
describe DockingStation do
  it { is_expected.to respond_to :release_bike} #heather test
  
  it 'releases working bikes' do
    bike = subject.release_bike # bike = new element(method - release bike)
    expect(bike).to respond_to(:working?) # checking if be_working function shows that the bike is working
  end

  it 'docking a bike' do 
    bike = Bike.new
    expect(subject.docking_bikes(bike)).to eq bike
  end

  it { is_expected.to respond_to(:docking_bikes).with(1).argument }

end

