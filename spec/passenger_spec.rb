require 'pry'
require './lib/passenger'

RSpec.configure do |config|
  config.formatter = :documentation
  end
  
RSpec.describe Passenger do
  
  it 'can initialize' do
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    expect(charlie).to be_an_instance_of(Passenger)
  end

  it 'can accept a different passenger' do #I feel like this could be combined with above somehow.
    expect(taylor = Passenger.new({"name" => "Taylor", "age" => 12})).to be_an_instance_of(Passenger)
  end

  it 'has a name' do
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    expect(charlie.name).to eq("Charlie")
  end

  it 'has an age' do
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    expect(charlie.age).to eq(18)
  end

  it 'is an adult' do
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    expect(charlie.adult?).to be true
  end

  it 'is not an adult' do
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})
    expect(taylor.adult?).to be false
  end

  it 'is not a driver' do
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    expect(charlie.driver?).to be false
  end

  it 'can make a driver' do
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    charlie.drive
    expect(charlie.driver?).to be true
  end 

end