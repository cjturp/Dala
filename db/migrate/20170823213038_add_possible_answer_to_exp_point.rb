class AddPossibleAnswerToExpPoint < ActiveRecord::Migration[5.1]
  def change
    add_reference :exp_points, :possible_answer, foreign_key: true
  end
end
