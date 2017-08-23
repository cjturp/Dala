class PossibleAnswer < ApplicationRecord
  belongs_to :question
  belongs_to :exp_points
  has_many :exp_points

end
