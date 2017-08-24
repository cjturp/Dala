class RemoveExpPointFromPossibleAnswer < ActiveRecord::Migration[5.1]
  def change
    remove_column :possible_answers, :exp_point_id, :string
  end
end
