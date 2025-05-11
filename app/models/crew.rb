class Crew < ApplicationRecord
  belongs_to :ship

  # enum rotation: {
  #   STRICT:   "STRICT",
  #   RELAXED:  "RELAXED"
  # }

  validates :current, :required, :capacity, :rotation,
    :morale, :wages, presence: true
end
