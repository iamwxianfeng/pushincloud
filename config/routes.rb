Pushincloud::Application.routes.draw do
  root :to => 'welcome#index'
  match '/demos/:action', :controller => 'demos', :as => 'demos'
  match '/demos' => 'demos#broadcast'
  match '/tutorials/:action', :controller => 'tutorials'
  match '/tutorials' => 'tutorials#index'
  match '/docs/:action', :controller => 'docs'
  match '/docs' => 'docs#index'
  resources :users

  namespace :admin do
    root :to => 'manage#index'
    match '/manage/:action', :controller => 'manage'
  end
end