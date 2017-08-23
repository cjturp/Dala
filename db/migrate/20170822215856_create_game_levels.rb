class CreateGameLevels < ActiveRecord::Migration[5.1]
  def change
    create_table :game_levels do |t|
      t.integer :level

      t.timestamps
    end
  end
end
