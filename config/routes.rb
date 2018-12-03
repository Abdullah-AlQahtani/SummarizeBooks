Rails.application.routes.draw do
  # get 'audio_summary/index'
  # get 'audio_summary/new'
  # get 'audio_summary/show'
  # get 'audio_summary/edit'
  # get 'audio_summary/create'
  devise_for :users
  resources :audio_summaries, :books
  # get "book/index"

  root "pages#home"
  # get 'book/new'
  # get 'book/edit'
  # get 'book/show'
  # get "book/create"
end
