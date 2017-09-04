class AddExplanationToPossibleAnswers < ActiveRecord::Migration[5.1]
  def change
    add_column :possible_answers, :explanation, :string
  end
end
