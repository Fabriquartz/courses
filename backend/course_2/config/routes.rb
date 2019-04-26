Rails.application.routes.draw do
  resources :calculations do
    get '/recent', action: :recent, on: :collection
  end
end
