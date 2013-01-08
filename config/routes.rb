Web3::Application.routes.draw do

  devise_for :admins

  devise_for :users

  resources :posts do
    resources :comments
  end


  resources :homes

  match '/Blog' => 'showblog#index', :as => :blog
  match '/Home' => 'homes#index', :as=> :home
  match '/Resume' => 'resume#index', :as => :resume
  root :to => 'homes#index'
end
