class GameLevel < ApplicationRecord
  belongs_to :game
  has_many :questions
end
