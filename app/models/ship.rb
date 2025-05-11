class Ship < ApplicationRecord
  has_one  :registration,   dependent: :destroy
  has_one  :nav,            dependent: :destroy
  has_one  :crew,           dependent: :destroy
  has_one  :frame,          dependent: :destroy
  has_one  :reactor,        dependent: :destroy
  has_one  :engine,         dependent: :destroy
  has_one  :cooldown,       dependent: :destroy

  has_many :ship_modules,        dependent: :destroy
  has_many :module_requirements, through: :ship_modules
  has_many :mounts,              dependent: :destroy
  has_many :mount_deposits,      through: :mounts
  has_one  :cargo,               dependent: :destroy
  has_many :cargo_inventory_items, through: :cargo
  has_one  :fuel,                dependent: :destroy
  has_many :fuel_consumptions,   through: :fuel

  validates :symbol, presence: true, uniqueness: true
end
