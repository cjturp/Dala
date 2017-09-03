class UsersController < ApplicationController
  def new
  end

  def choose_avatar
  end

  def leaderboard
  end

  def asign_avatar
    image = params[:image]
    # current_user.image = image
    # current_user.save
  end
end
