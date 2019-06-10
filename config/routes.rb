Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'categories#index'
  resources :categories, only: %i[index show] do
    resource :quiz, only: %i[show update create] do
      resource :result, only: :show
    end
  end
  resources :words, only: %i[show]
end
