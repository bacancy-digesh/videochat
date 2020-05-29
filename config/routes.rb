Rails.application.routes.draw do
   devise_for :users

  get '/watch/:id', to: 'users#watch', as: :watch
  get '/stream', to: 'users#stream', as: :stream

  root 'users#stream'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
