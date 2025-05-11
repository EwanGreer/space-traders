class CreateFuels < ActiveRecord::Migration[8.0]
  def change
    create_table :ships do |t|
      t.string :symbol

      t.timestamps
    end

    create_table :registrations do |t|
      t.references :ship, null: false, foreign_key: true
      t.string :name
      t.string :faction_symbol
      t.string :role

      t.timestamps
    end

    create_table :navs do |t|
      t.references :ship, null: false, foreign_key: true
      t.string :system_symbol
      t.string :waypoint_symbol
      t.string :status
      t.string :flight_mode

      t.timestamps
    end

    create_table :routes do |t|
      t.references :nav, null: false, foreign_key: true
      t.jsonb :origin_data
      t.jsonb :destination_data
      t.datetime :departure_time
      t.datetime :arrival_time

      t.timestamps
    end

    create_table :fuels do |t|
      t.references :ship, null: false, foreign_key: true
      t.integer :current
      t.integer :capacity

      t.timestamps
    end

    create_table :fuel_consumptions do |t|
      t.references :fuels, null: false, foreign_key: true
      t.integer :amount
      t.timestamp :consumed_at

      t.timestamps
    end

    create_table :crews do |t|
      t.references :ship, null: false, foreign_key: true
      t.integer :current
      t.integer :required
      t.integer :capacity
      t.string :rotation
      t.integer :morale
      t.integer :wages

      t.timestamps
    end

    create_table :frames do |t|
      t.references :ship, null: false, foreign_key: true
      t.string :symbol
      t.string :name
      t.text :description
      t.integer :condition
      t.integer :integrity
      t.integer :module_slots
      t.integer :mounting_points
      t.integer :fuel_capacity
      t.integer :quality

      t.timestamps
    end

    create_table :frame_requirements do |t|
      t.references :frame, null: false, foreign_key: true
      t.integer :power
      t.integer :crew
      t.integer :slots

      t.timestamps
    end
  end
end
