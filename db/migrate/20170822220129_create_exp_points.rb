class CreateExpPoints < ActiveRecord::Migration[5.1]
  def change
    create_table :exp_points do |t|
      t.integer :points

      t.timestamps
    end
  end
end
