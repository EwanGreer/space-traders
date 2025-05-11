class Frame < ApplicationRecord
  belongs_to :ship
  has_one    :requirements,
    class_name: "FrameRequirement",
    dependent: :destroy
end
