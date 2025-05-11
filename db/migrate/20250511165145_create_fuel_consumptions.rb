class CreateFuelConsumptions < ActiveRecord::Migration[8.0]
  def change
    create_table :fuel_consumptions do |t|
      t.references :fules, null: false, foreign_key: true
      t.integer :amount
      t.timestamp :consumed_at

      t.timestamps
    end
  end
end
