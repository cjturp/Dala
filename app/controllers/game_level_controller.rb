class GameLevelController < ApplicationController
  def new
    @gamelevel = current_user.current_level(Game.find(3))
  end
  def show
    @gamelevel = Game.find(3).game_levels[0]
    @question = Question.where(game_level_id: params[:id]).last
    @current_question_id = @question.id
    @user = current_user
    @game = @question.game_level.game
    render "games/show"
  end
end
