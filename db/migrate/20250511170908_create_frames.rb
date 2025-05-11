class CreateFrames < ActiveRecord::Migration[8.0]
  def change
    create_table :frames do |t|
      t.references :ship, null: false, foreign_key: true
      t.string :symbol
      t.string :name
      t.text :description
      t.integer :condition
      t.integer :integrity
      t.integer :module_slots
      t.integer :mounting_points
      t.integer :fuel_capacity
      t.integer :quality

      t.timestamps
    end
  end
end
