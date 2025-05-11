class CreateShipModules < ActiveRecord::Migration[8.0]
  def change
    create_table :ship_modules do |t|
      t.references :ship, null: false, foreign_key: true
      t.string :symbol
      t.integer :capacity
      t.integer :range
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
