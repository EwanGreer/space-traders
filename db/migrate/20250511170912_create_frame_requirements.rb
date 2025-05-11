class CreateFrameRequirements < ActiveRecord::Migration[8.0]
  def change
    create_table :frame_requirements do |t|
      t.references :frame, null: false, foreign_key: true
      t.integer :power
      t.integer :crew
      t.integer :slots

      t.timestamps
    end
  end
end
