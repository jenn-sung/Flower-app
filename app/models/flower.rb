class Flower < ApplicationRecord
  def as_json
    {
    name: name, 
    color: color, 
    price: price
  }
  end
end
