class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.string :name
      t.integer :level
      t.string :instructions
      t.string :subject

      t.timestamps
    end
  end
end
