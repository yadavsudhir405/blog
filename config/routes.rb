Rails.application.routes.draw do
  resources :widgets
  get 'welcome/index'
  get 'welcome/greeting'

  get 'identity'=>"identity#identify"
  post 'authenticate'=>"identity#authenticate"

  get 'ping'=>"ping_test#ping"

  post 'authenticate'=>'login#authenticate'
  get 'greetings/index'=>'greetings#index'

  root 'welcome#index'

  resources :triggers


  resources :articles do
    resources :comments
  end
  resources :trips
  resources :persons

end
