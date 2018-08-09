require "docking_station"

describe DockingStation do

  before do
    @docking_station = DockingStation.new
  end

  it "creates new object of class DockingStation" do
    expect(@docking_station.class).to eq DockingStation
  end

  it { expect(@docking_station).to respond_to(:release_bike) }

  # it 'gets working bike' do
  #   bike = @docking_station.release_bike
  #   expect(bike.working?).to eq true
  # end

  it 'docks a bike' do
    bike = Bike.new
    expect(@docking_station.dock(bike).last).to eq bike
  end

  it 'see a docked bike' do
    bike = Bike.new
    expect(@docking_station.dock(bike).last).to eq bike
  end

    it 'instantiates with default capacity of 20' do
      expect(subject.capacity).to eq (DockingStation::DEFAULT_CAPACITY)
    end

  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
    it 'raises error if there is no bike' do
      expect {subject.release_bike}.to raise_error 'no bikes available'
    end
  end

  describe '#dock' do
    it 'raises error if docking station is full' do
      subject.capacity.times {subject.dock(Bike.new)}
      expect {subject.dock(Bike.new)}.to raise_error 'docking station full'
    end
  end

end
