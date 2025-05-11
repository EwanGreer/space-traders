class Reactor < ApplicationRecord
  belongs_to :ship
  has_one    :requirements,
    class_name: "ReactorRequirement",
    dependent: :destroy
end
