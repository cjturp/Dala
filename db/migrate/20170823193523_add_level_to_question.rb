class AddLevelToQuestion < ActiveRecord::Migration[5.1]
  def change
    add_reference :questions, :game_level, foreign_key: true
  end
end
