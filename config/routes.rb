Rails.application.routes.draw do
  resources :books
 #  get 'books' => 'books#index'
 #  get 'top' => 'homes#top'

	# #投稿ページを表示
 #    get 'books/new', to: 'books#new'

 #    #投稿データの作成
 #    post 'books', to: 'books#create'

 #    # 投稿ページ表示(追加)
 #    get 'books/:id', to: 'books#show'

 #    get 'books/:id/edit' => 'books#edit', as: 'edit_book'

 #    patch 'books/:id' => 'books#update', as: 'update_book'

 delete 'todolists/:id' => 'todolists#destroy', as: 'destroy_todolist'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 	root 'homes#top'

end
