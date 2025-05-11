class CreateRoutes < ActiveRecord::Migration[8.0]
  def change
    create_table :routes do |t|
      t.references :nav, null: false, foreign_key: true
      t.jsonb :origin_data
      t.jsonb :destination_data
      t.datetime :departure_time
      t.datetime :arrival_time

      t.timestamps
    end
  end
end
