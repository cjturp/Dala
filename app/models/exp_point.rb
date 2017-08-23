class ExpPoint < ApplicationRecord
  has_many :possible_answers
  belongs_to :possible_answer
  belongs_to :user
end
