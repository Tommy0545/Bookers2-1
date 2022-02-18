Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  get 'home/about' => 'homes#about', as: 'about'
  resources :books, only: [:new, :create, :index, :show, :destroy, :edit, :update]
  resources :users, only: [:show, :edit, :update, :index,]
  patch 'books/:id' => 'books#update', as: 'update_book'
  patch 'users/:id' => 'users#update', as: 'update_user'
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'
end
