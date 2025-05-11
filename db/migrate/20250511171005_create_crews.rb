class CreateCrews < ActiveRecord::Migration[8.0]
  def change
    create_table :crews do |t|
      t.references :ship, null: false, foreign_key: true
      t.integer :current
      t.integer :required
      t.integer :capacity
      t.string :rotation
      t.integer :morale
      t.integer :wages

      t.timestamps
    end
  end
end
