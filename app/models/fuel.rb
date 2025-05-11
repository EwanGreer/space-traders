class Fuel < ApplicationRecord
  belongs_to :ship
  has_many :fuel_consumptions
end
