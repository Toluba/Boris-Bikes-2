require 'docking_station'
describe DockingStation do
  it { is_expected.to respond_to :release_bike } #responds to release bike
  
  it '#releases working bikes' do
    bike = subject.release_bike # bike = new element(method - release bike)
    expect(bike).to be_working
    # (:working?) # checking if be_working function shows that the bike is working
  end

  # it 'docking a bike' do 
  #   bike = Bike.new 
  #   expect(subject.docking_bikes(bike)).to eq bike #checking that docking bikes arguement is equal to an instance of the bike class
  # end

  it {is_expected.to respond_to(:docking_bikes).with(1).argument } #checking that theres 1 arguement that responds to docking_bikes

  it { is_expected.to respond_to(:bike) }

  it 'returns docked bikes' do
    bike = Bike.new
    subject.docking_bikes(bike)
    expect(subject.bike).to eq bike
  end 

 
  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.docking_bikes(bike)
      expect(subject.release_bike).to eq bike
    end

    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end

  describe '#docking_bikes' do
    it 'raise an error when full' do
      subject.docking_bikes(Bike.new)
      expect { subject.docking_bikes Bike.new }.to raise_error 'Docking Station is full'
    end
  end
end
