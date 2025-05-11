class CreateModuleRequirements < ActiveRecord::Migration[8.0]
  def change
    create_table :module_requirements do |t|
      t.references :ship_module, null: false, foreign_key: true
      t.integer :power
      t.integer :crew
      t.integer :slots

      t.timestamps
    end
  end
end
