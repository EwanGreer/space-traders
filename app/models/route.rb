class Route < ApplicationRecord
  belongs_to :nav

  validates :departure_time, :arrival_time, presence: true
end
