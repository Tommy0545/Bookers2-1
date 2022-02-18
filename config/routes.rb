Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  get 'home/about' => 'homes#about', as: 'about'
  get 'users' => 'users#index'
  get 'users/:id' => 'users#show', as: 'user'
  get 'users/:id/edit' => 'users#edit', as: 'edit_user'
  get 'books' => 'books#index',as:'books'
  post 'books' => 'books#create' 
  get 'books/:id' => 'books#show', as: 'book'
  get 'books/:id/edit' => 'books#edit', as: 'edit_book'
  patch 'books/:id' => 'books#update', as: 'update_book'
  patch 'users/:id' => 'users#update', as: 'update_user'
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'
end
