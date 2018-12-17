Rails.application.routes.draw do
  resources :jokers
  resources :avoidances
  resources :otetsukis
  resources :criticals
  resources :grades_tournaments
  resources :districts
  resources :hands
  resources :genders
  resources :grades
  resources :age_classes
  resources :areas
  resources :styles
  resources :game_counts
  resources :game_types
  resources :fields
  resources :karuta
  resources :opponents
  resources :results
  resources :tournaments
  resources :schedule_tournaments
  resources :schedule_practices
  devise_for :users
  root 'pages#index'
  get 'pages/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
