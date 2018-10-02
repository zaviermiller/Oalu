Rails.application.routes.draw do
  resources :comments, except: [:new]
  devise_for :users, controllers: {registrations: 'users/registrations'}
  get 'home/index'
  get 'home/comment'
  root 'home#index'
  get '/:url/comments/new', to: 'comments#new', as: 'new_comment'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
