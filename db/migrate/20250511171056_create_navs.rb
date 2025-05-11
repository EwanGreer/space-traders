class CreateNavs < ActiveRecord::Migration[8.0]
  def change
    create_table :navs do |t|
      t.references :ship, null: false, foreign_key: true
      t.string :system_symbol
      t.string :waypoint_symbol
      t.string :status
      t.string :flight_mode

      t.timestamps
    end
  end
end
