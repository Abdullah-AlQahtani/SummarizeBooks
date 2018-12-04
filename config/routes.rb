Rails.application.routes.draw do
  root "pages#home"
  post "/rate" => "rater#create", :as => "rate"
  # get 'audio_summary/index'
  # get 'audio_summary/new'
  # get 'audio_summary/show'
  # get 'audio_summary/edit'
  # get 'audio_summary/create'
  devise_for :users
  resources :audio_summaries, :books
  # get "book/index"

  # get 'book/new'
  # get 'book/edit'
  # get 'book/show'
  # get "book/create"
end
