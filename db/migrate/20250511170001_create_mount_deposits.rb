class CreateMountDeposits < ActiveRecord::Migration[8.0]
  def change
    create_table :mount_deposits do |t|
      t.references :mount, null: false, foreign_key: true
      t.string :deposit

      t.timestamps
    end
  end
end
