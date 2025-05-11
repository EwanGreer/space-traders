class Registration < ApplicationRecord
  belongs_to :ship

  enum role: {
    FABRICATOR: "FABRICATOR",
    // add other roles here…
  }

  validates :name, :faction_symbol, :role, presence: true
end
