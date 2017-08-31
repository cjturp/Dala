class ChangeAnswerColumnOnUserAnswer < ActiveRecord::Migration[5.1]
  def change
    rename_column :user_answers, :answer, :answer_id
    change_column(:user_answers, :answer_id, 'integer USING CAST(answer_id AS integer)')

  end
end
