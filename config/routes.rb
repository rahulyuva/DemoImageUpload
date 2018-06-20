Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "home#index"

  resources :home, only: [:index] do
    collection do
      post :upload_photo
    end
  end
end
