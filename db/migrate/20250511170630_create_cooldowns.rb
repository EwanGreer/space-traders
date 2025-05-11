class CreateCooldowns < ActiveRecord::Migration[8.0]
  def change
    create_table :cooldowns do |t|
      t.references :ship, null: false, foreign_key: true
      t.integer :total_seconds
      t.integer :remaining_seconds
      t.datetime :expiration

      t.timestamps
    end
  end
end
