class PossibleAnswer < ApplicationRecord
  belongs_to :question
  has_one :user_answer
  

end
