class CreateUserAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :user_answers do |t|
      t.string :answer
      t.integer :exp_points

      t.timestamps
    end
  end
end
