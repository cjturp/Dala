class AddGameToGameLevel < ActiveRecord::Migration[5.1]
  def change
    add_reference :game_levels, :game, foreign_key: true
  end
end
