Rails.application.routes.draw do
  get '/', to: 'poems#home'
  resources :poems do
    collection do
      post :confirm
    end
  end
end
