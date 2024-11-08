class AddGameToRounds < ActiveRecord::Migration[7.0]
  def change
    add_reference :rounds, :game, null: false, foreign_key: true
  end
end
