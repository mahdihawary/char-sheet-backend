Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do 
    namespace :v1 do
      resources :users
      resources :spells
      resources :skills
      resources :abilities
      resources :characters
      resources :character_skills
      resources :character_spells
      resources :character_abilities
    end
  end
end
