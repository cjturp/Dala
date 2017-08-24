class AddUserToGame < ActiveRecord::Migration[5.1]
  def change
    add_reference :games, :user, foreign_key: true
  end
end
