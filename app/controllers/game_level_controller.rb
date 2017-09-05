class GameLevelController < ApplicationController
  def new
    @gamelevel = current_user.current_level(Game.find(params[:game_id]))
  end
  def show

    @question = Question.where(game_level_id: params[:id]).last
    @current_question_id = @question.id
    @user = current_user
    @game = @question.game_level.game
    render "games/show"
  end
end
