Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :trainers
  resources :trainers, :pokemon
  patch '/capture/:id', to: 'pokemons#capture', as: 'capture'
  patch '/damage/:id', to: 'pokemons#damage', as: 'damage'
  get "pokemon/new", to: "pokemon#new"
end
