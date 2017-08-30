class AddUserIdToUserAnswers < ActiveRecord::Migration[5.1]
  def change
    add_column :user_answers, :user_id, :string
  end
end
