class Game < ApplicationRecord
  # has_many :users
  # belongs_to :user
  has_many :game_levels
  validates :name, presence: true

  # def previous_question
  #   Question.where(["id < ?", id]).last
  # end
  #
  # def next_question
  #   Question.where(["id > ?", id]).first
  # end

end
