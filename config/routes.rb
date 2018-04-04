Rails.application.routes.draw do
 resources :charges, only: [:new, :create]

  get 'welcome/index'
  root 'welcome#index'

  devise_for :users, controllers: {
        sessions: 'users/sessions'
    }
   
get 'thanks', to: 'charges#thanks', as: 'thanks'
  resources :experiences
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
