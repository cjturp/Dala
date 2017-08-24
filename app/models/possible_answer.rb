class PossibleAnswer < ApplicationRecord
  belongs_to :question
  has_one :exp_point

end
