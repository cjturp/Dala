class AddExpPointAgainToPossibleAnswer < ActiveRecord::Migration[5.1]
  def change
    add_reference :possible_answers, :exp_point, foreign_key: true
  end
end
