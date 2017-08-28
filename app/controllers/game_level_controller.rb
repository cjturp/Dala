class GameLevelController < ApplicationController
  def new
    @gamelevel = Gamelevel.find(params[:game_id])
  end
end
