Rails.application.routes.draw do
  devise_for :users
  get "pages/home"
  # get "book/index"

  root "pages#home"
  # get 'book/new'
  # get 'book/edit'
  # get 'book/show'
  # get "book/create"
end
