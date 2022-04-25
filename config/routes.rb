Rails.application.routes.draw do

  root to: 'homes#top'
  devise_for :users

  get 'homes/about', to: 'homes#about', as: 'about'
  
  resources :post_images, only: [:new, :create, :index, :show, :destroy]do
   resources :post_comments, only: [:creat, :destroy]
 end

  resources :users,only: [:edit, :show, :update]
   
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

