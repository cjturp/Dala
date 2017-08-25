class UserAnswer < ApplicationRecord
  belongs_to :user
  has_one :possible_answer

end
