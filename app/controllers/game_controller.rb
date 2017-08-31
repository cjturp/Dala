class GameController < ApplicationController
  def new

  end

  def show
    @games = Game.all
    @gamelevel = @game.game_levels
    @question = @question.gamelevels

     @games.each do |thegame|
   if thegame.name == "Math101"
    thegame.game_levels
    end
end
