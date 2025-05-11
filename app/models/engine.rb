class Engine < ApplicationRecord
  belongs_to :ship
  has_one    :requirements,
    class_name: "EngineRequirement",
    dependent: :destroy
end
