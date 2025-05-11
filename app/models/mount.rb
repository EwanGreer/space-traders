class Mount < ApplicationRecord
  belongs_to :ship
  has_one    :requirements,
    class_name: "MountRequirement",
    dependent: :destroy
  has_many   :mount_deposits,
    dependent: :destroy
end
