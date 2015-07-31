Rails.application.routes.draw do
  root 'users#new'
  get '/pricing' => 'users#pricing'

  resources :users, only: [:index, :create, :new]
  get 'thanks' => 'static#success'
  get 'csv' => 'users#export_csv', :as => :csv
end
