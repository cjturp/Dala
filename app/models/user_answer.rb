class UserAnswer < ApplicationRecord
  belongs_to :user
  has_one :possible_answer, foreign_key: :id
end
