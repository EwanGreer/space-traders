class CreateFactions < ActiveRecord::Migration[8.0]
  def change
    create_table :factions do |t|
      t.string :symbol
      t.string :name
      t.string :desctiption
      t.references :headquarters, null: false, foreign_key: { to_table: :systems }

      t.timestamps
    end
  end
end
