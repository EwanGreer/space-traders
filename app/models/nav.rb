class Nav < ApplicationRecord
  belongs_to :ship

  has_one    :route, dependent: :destroy

  enum status: {
    IN_TRANSIT: "IN_TRANSIT",
    DOCKED:     "DOCKED",
    IN_ORBIT:   "IN_ORBIT"
  }

  enum flight_mode: {
    CRUISE: "CRUISE",
    STEALTH: "STEALTH",
    BURN:    "BURN"
  }

  validates :system_symbol, :waypoint_symbol, :status, :flight_mode, presence: true
end
