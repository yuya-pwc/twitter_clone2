Rails.application.routes.draw do
  resources :poems do
    collection do
      post :confirm
    end
  end
end
