class Park
  attr_reader :name,
              :admission_price_adult,
              :vehicle_list

  def initialize(park_info)
    @name = park_info[:name]
    @admission_price_adult = park_info[:admission_price_adult]
    @vehicle_list = []
  end



end