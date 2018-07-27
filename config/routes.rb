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
  get 'posts/:id/thesis' => 'posts#thesis'
  get 'posts/:id/conference_proceeding' => 'posts#conference'
  get 'posts/:id/poster_presentation' => 'posts#poster'
  get 'posts/:id/paper_presentation' => 'posts#paper'
  get 'posts/:id/magazine' => 'posts#magazine'
  get 'posts/:id/journal' => 'posts#journal'
  get 'posts/:id/scholarly_book' => 'posts#scholarly_book'
  get 'posts/:id/edited_book' => 'posts#edited_book'
  get 'posts/:id/chapter_in_edited_book' => 'posts#chap_in_edited_book'
  get 'posts/:id/newspaper_article' => 'posts#newspaper'
  get 'posts/:id/broadcast' => 'posts#broadcast'
  get 'posts/:id/computer_science' => 'posts#computer_science'
  get 'posts/:id/artwork' => 'posts#artwork'
  get 'posts/:id/music' => 'posts#music'
  get 'posts/:id/blog' => 'posts#blog'
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
