class CreateCargos < ActiveRecord::Migration[8.0]
  def change
    create_table :cargos do |t|
      t.references :ship, null: false, foreign_key: true
      t.integer :capacity
      t.integer :units

      t.timestamps
    end
  end
end
