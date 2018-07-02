Rails.application.routes.draw do
  root 'cars#index'
  get 'cars/index'
  get 'cars/create' => 'cars#create'
  get 'cars/edit' => 'cars#edit'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
