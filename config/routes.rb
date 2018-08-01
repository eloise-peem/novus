Rails.application.routes.draw do

  #authenticated :user do
	#root to: 'posts#index', as: :authenticated_root
  #end
	#root to: redirect('/posts/guest_index')
  
  root to: 'posts#index'
  devise_for :users, :controllers => { registrations: 'users/registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  match "/404" => "errors#error404", via: [ :get, :post, :patch, :delete ]
  mount PdfjsViewer::Rails::Engine => "/pdfjs", as: 'pdfjs'
  
  get 'tags/:tag', to: 'posts#index', as: "tag"
  get 'authors/:author', to: 'posts#index', as: "author"

  get 'posts/:id' => 'posts#show'
  get 'posts/guest_index' => 'posts#guest_index'
  get 'posts/:id/authors' => 'posts#author'
  put 'posts/:id/authors' => 'posts#update'
  get 'posts/:id/edit' => 'posts#edit'
  put 'posts/:id/edit' => 'posts#update'
  post 'posts/' => 'posts#create'
  delete 'posts/:id/delete' => 'posts#delete'
  get 'posts/:id/submission_type' => 'posts#submission_type'
  

  get 'posts/:id/delete' => 'posts#delete'

  get 'user_infos/index' => 'user_infos#index'
  get 'user_infos/sign_up' => 'user_infos#new'
  post 'user_infos/' => 'user_infos#create'
  get 'user_infos/:id' => 'user_infos#profile'
  get 'user_infos/:id/edit' => 'user_infos#edit'
  put 'user_infos/:id/edit' => 'user_infos#update'
  get 'user_infos/:id/work_progress' => 'user_infos#work_progress'
  
end
