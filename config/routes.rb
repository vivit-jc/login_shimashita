LoginSimasita::Application.routes.draw do

  resources :users do
    member do
      get 'toggle'
    end
  end

  root :to => 'users#index'

end
