class CreateSystems < ActiveRecord::Migration[8.0]
  def change
    create_table :systems do |t|
      t.string :symbol
      t.string :sector_symbol
      t.string :constellation
      t.string :name
      t.string :type
      t.integer :x
      t.integer :y

      t.timestamps
    end
  end
end
