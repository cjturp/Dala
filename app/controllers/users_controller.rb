class UsersController < ApplicationController
  def choose_avatar
  end

  def asign_avatar
    image = params[:image]
    # current_user.image = image
    # current_user.save
  end
end
