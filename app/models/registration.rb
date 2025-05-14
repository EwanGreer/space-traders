class Registration < ApplicationRecord
  belongs_to :ship

  # enum role: {
  #   FABRICATOR: "FABRICATOR"
  # }

  validates :name, :faction_symbol, :role, presence: true
end
