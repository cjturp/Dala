class AddUserToExpPoint < ActiveRecord::Migration[5.1]
  def change
    add_reference :exp_points, :user, foreign_key: true
  end
end
