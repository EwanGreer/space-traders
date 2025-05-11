class CreateMounts < ActiveRecord::Migration[8.0]
  def change
    create_table :mounts do |t|
      t.references :ship, null: false, foreign_key: true
      t.string :symbol
      t.string :name
      t.string :description
      t.integer :strength

      t.timestamps
    end
  end
end
