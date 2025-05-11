class AddAgentToShips < ActiveRecord::Migration[8.0]
  def change
    add_reference :ships, :agent, null: false, foreign_key: true
  end
end
