Rails.application.routes.draw do
  get 'possible_answers/new'

  get 'questions/new'

  get 'game_level/new'

  get 'game/new'

  get 'users/new'

  get 'users/choose_avatar'

  get 'users/registration_page'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
