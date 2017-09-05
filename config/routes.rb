Rails.application.routes.draw do

  devise_for :users, :controllers => { registrations: 'registrations' }
resources :games, only: [ :index, :show ] do
  resources :game_level, only: [ :index, :show], shallow: true
end

resources :users, only: [ :index] do

end
  root 'games#new'
  get 'home_page', to: 'users#new'

  get 'users/profile'
  get 'game/level1', to: 'games#level1'

  get 'game/level2', to: 'games#level2'

  get 'game/level3', to: 'games#level3'
  get 'game/level4', to: 'games#level4'

  get 'signup', to: 'users#registration_page'

  get 'play', to: 'game#new'

  get 'possible_answers/new'

  get 'questions/new'

  get 'game_level/new'

  get 'game/new'

  get 'users/new'

  get 'users/leaderboard'

  get 'users/choose_avatar'

  post 'users/asign_avatar'

  get 'users/registration_page'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
