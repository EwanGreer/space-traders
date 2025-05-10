class CreateAgents < ActiveRecord::Migration[8.0]
  def change
    create_table :agents do |t|
      t.references :user, null: false, foreign_key: true
      t.string :symbol
      t.string :account_id
      t.integer :credits
      t.references :faction, null: false, foreign_key: { to_table: :factions }
      t.references :headquarters, null: false, foreign_key: { to_table: :systems }

      t.timestamps
    end
  end
end
