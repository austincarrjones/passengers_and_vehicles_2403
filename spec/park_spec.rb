require 'pry'
require './lib/vehicle'
require './lib/passenger'
require './lib/park'

RSpec.configure do |config|
  config.formatter = :documentation
  end
  
RSpec.describe Vehicle do
  
  it 'can initialize' do
    park = Park.new({name: "Acadia", admission_price_adult: 20})
    expect(park).to be_an_instance_of(Park)
  end

  it 'has vehicle list' do
    park = Park.new({name: "Acadia", admission_price_adult: 20})
    expect(park.vehicle_list).to eq([])
  end

  it 'can add vehicles to park' do
    park = Park.new({name: "Acadia", admission_price_adult: 20})
    vehicle_1 = Vehicle.new("2001", "Honda", "Civic")
    park.add_vehicle(vehicle_1)
    expect(park.vehicle_list).to eq([vehicle_1])
  end

  it 'can add more vehicles' do
    park = Park.new({name: "Acadia", admission_price_adult: 20})
    vehicle_1 = Vehicle.new("2001", "Honda", "Civic")
    vehicle_2 = Vehicle.new("2017", "Subaru", "Forrester")
    park.add_vehicle(vehicle_1)
    park.add_vehicle(vehicle_2)
    expect(park.vehicle_list).to eq([vehicle_1, vehicle_2])
  end

  it 'has passenger list' do
    park = Park.new({name: "Acadia", admission_price_adult: 20})
    expect(park.passenger_list).to eq([])
  end 

  it 'can add passengers to park' do #how to make this more efficient?
    park = Park.new({name: "Acadia", admission_price_adult: 20})
    vehicle_1 = Vehicle.new("2001", "Honda", "Civic")
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})    
    jude = Passenger.new({"name" => "Jude", "age" => 20})    
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})
    #kick off helper method for the vehicle to add passengers? Ran out of time.
    # vehicle.add_passenger(charlie)
    # vehicle.add_passenger(jude)
    # vehicle.add_passenger(taylor)
    park.add_passengers(vehicle.passengers)
    expect(park.passenger_list).to eq([charlie, jude, taylor])
  end

  xit 'can add revenue' do
    park = Park.new({name: "Acadia", admission_price_adult: 20})
    vehicle_1 = Vehicle.new("2001", "Honda", "Civic")
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})    
    jude = Passenger.new({"name" => "Jude", "age" => 20})    
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})
    vehicle.add_passenger(charlie)
    vehicle.add_passenger(jude)
    vehicle.add_passenger(taylor)
    park.add_passengers(vehicle.passgners)

    expect(park.revenue).to eq(40)
  end

end

