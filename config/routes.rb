Rails.application.routes.draw do

  resources :photos, only: [:index, :show, :create, :new, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
