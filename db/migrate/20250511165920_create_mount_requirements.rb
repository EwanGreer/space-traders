class CreateMountRequirements < ActiveRecord::Migration[8.0]
  def change
    create_table :mount_requirements do |t|
      t.references :mount, null: false, foreign_key: true
      t.integer :power
      t.integer :crew
      t.integer :slots

      t.timestamps
    end
  end
end
