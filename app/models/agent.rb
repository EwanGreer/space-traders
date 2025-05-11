class Agent < ApplicationRecord
  belongs_to :user
  belongs_to :faction
  has_one :headquarters
  has_many :ships
end
