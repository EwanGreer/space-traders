class Agent < ApplicationRecord
  belongs_to :user
  belongs_to :faction
  has_one :headquarters
end
