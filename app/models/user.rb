class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :user_answers

  def exp_points
    condition_hash = {
      possible_answers: {
        correct_ans: true
      }
    }
    join_array = [:possible_answer]
    self.user_answers.where(
      condition_hash
    ).includes(
      join_array
    ).sum("exp_points")
  end

  def current_level(game)
    condition_hash = {
      possible_answers: {
        questions:{
          game_levels: {
            game: game
          }
        }
      }
    }
    join_hash = {
        possible_answer:{
          question: :game_level
        }
    }
    answers = self.user_answers.where(
      condition_hash
    ).includes(
      join_hash
    ).order(:level)

    if answers.exists?
      level = answers.last.possible_answer.question.game_level
    else
      level = game.game_levels.first
    end
    level
  end
end

# games_levels = {game_one: 4, game_two: 5}
