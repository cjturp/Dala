Rails.application.routes.draw do

resources :games, only: [ :index, :show ] do
  resources :gamelevels, only: [ :index, :show], shallow: true
end

resources :users, only: [ :index] do

end
  root 'users#new'
  get 'profile', to: 'users#new'

  get 'signup', to: 'users#registration_page'

  get 'play', to: 'game#new'

  get 'possible_answers/new'

  get 'questions/new'

  get 'game_level/new'

  get 'game/new'

  get 'users/new'

  get 'users/choose_avatar'

  get 'users/registration_page'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
