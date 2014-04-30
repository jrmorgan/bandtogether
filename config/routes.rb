Bandtogether::Application.routes.draw do
  devise_for :users

  authenticated :user do
    resources :projects
    get ':username', :to => 'users#show', :as => :profile

    get ':username/projects', :to => 'projects#index', :as => :user_projects
    root to: "users#show", :as => :user_root
  end

  root to: "home#index"

end
