Rails.application.routes.draw do
  
  root 'checks#index'
  
  get 'checks/index'
  get 'checks/second'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
