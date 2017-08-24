class AddQuestionToPossibleAnswer < ActiveRecord::Migration[5.1]
  def change
    add_reference :possible_answers, :question, foreign_key: true
  end
end
