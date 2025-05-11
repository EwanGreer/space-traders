class CreateShips < ActiveRecord::Migration[8.0]
  def change
    create_table :ships do |t|
      t.string :symbol

      t.timestamps
    end
  end
end
