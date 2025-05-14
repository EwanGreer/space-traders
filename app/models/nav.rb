class Nav < ApplicationRecord
  belongs_to :ship
  has_one    :route, dependent: :destroy

  # enum status: {
  #   in_transit: "in_transit",
  #   docked:     "docked",
  #   in_orbit:   "in_orbit"
  # }
  #
  # enum flight_mode: {
  #   cruise: "cruise",
  #   stealth: "stealth",
  #   burn:    "burn"
  # }

  validates :system_symbol, :waypoint_symbol, :status, :flight_mode, presence: true
end
