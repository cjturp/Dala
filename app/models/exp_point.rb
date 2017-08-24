class ExpPoint < ApplicationRecord
  belongs_to :possible_answer, foreign_key: :possible_answer_id
  belongs_to :user
end
