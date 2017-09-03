class Game < ApplicationRecord
  # has_many :users
  # belongs_to :user
  has_many :game_levels
  validates :name, presence: true

  # def previous_question
  #   Question[0].where(["id < ?", id]).last
  # end
  #
  # def next_question
  #   current_user.current_level(self).questions.where(["id > ?", current_user.current_level(self).questions[0].id]).first
  # end

  def nextone

  end

end
