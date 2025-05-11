class CreateFuels < ActiveRecord::Migration[8.0]
  def change
    create_table :fuels do |t|
      t.references :ship, null: false, foreign_key: true
      t.integer :current
      t.integer :capacity

      t.timestamps
    end
  end
end
