class RenameTypeColumnInSystems < ActiveRecord::Migration[8.0]
  def change
    rename_column :systems, :type, :system_type
  end
end
