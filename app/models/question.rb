class Question < ApplicationRecord
  belongs_to :game_level
  has_many :possible_answers
  # validates :title, presence: true 
end
