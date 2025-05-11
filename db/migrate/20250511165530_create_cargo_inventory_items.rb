class CreateCargoInventoryItems < ActiveRecord::Migration[8.0]
  def change
    create_table :cargo_inventory_items do |t|
      t.references :cargo, null: false, foreign_key: true
      t.string :item_symbol
      t.string :item_name
      t.integer :quantity
      t.integer :unit_price

      t.timestamps
    end
  end
end
