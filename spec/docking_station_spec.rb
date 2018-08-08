require "docking_station"

describe DockingStation do

  before do
    @docking_station = DockingStation.new
  end

  it "creates new object of class DockingStation" do
    expect(@docking_station.class).to eq DockingStation
  end

  it { expect(@docking_station).to respond_to(:release_bike) }

  it 'gets working bike' do
    bike = @docking_station.release_bike
    expect(bike.working?).to eq true
  end

  it 'docks a bike' do
    bike = @docking_station.release_bike
    expect(@docking_station.dock(bike)).to eq bike
  end

  it 'see a docked bike' do
    bike = @docking_station.release_bike
    @docking_station.dock(bike)
    expect(@docking_station.bike).to eq bike
  end

  it 'next test' do
  end
end
