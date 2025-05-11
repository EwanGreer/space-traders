class CreateEngines < ActiveRecord::Migration[8.0]
  def change
    create_table :engines do |t|
      t.references :ship, null: false, foreign_key: true
      t.string :symbol
      t.string :name
      t.text :description
      t.integer :condition
      t.integer :integrity
      t.integer :speed
      t.integer :quality

      t.timestamps
    end
  end
end
