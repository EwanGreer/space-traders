class CreateEngineRequirements < ActiveRecord::Migration[8.0]
  def change
    create_table :engine_requirements do |t|
      t.references :engine, null: false, foreign_key: true
      t.integer :power
      t.integer :crew
      t.integer :slots

      t.timestamps
    end
  end
end
