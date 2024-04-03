class Park
  attr_reader :name,
              :admission_price_adult,
              :vehicle_list,
              :passenger_list

  def initialize(park_info)
    @name = park_info[:name]
    @admission_price_adult = park_info[:admission_price_adult]
    @vehicle_list = []
    @passenger_list = []
  end

  def add_vehicle(vehicle)
    @vehicle_list << vehicle
  end

  def passenger_list
    @passenger_list
  end

end