Rails.application.routes.draw do
  resources :books

  namespace :api do
    namespace :v1 do
      resources :books, defaults: {format: :json}
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
