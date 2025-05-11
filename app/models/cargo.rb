class Cargo < ApplicationRecord
  belongs_to :ship
  has_many   :inventory_items,
    class_name: "CargoInventoryItem",
    dependent: :destroy
end
