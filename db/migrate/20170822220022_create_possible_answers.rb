class CreatePossibleAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :possible_answers do |t|
      t.string :answer
      t.boolean :correct_ans

      t.timestamps
    end
  end
end
