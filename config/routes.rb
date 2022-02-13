Rails.application.routes.draw do
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "books"=>'books#index'
  get 'books/:id'=>'books#show', as: 'book'
  post "book"=>"books#create"
  post "books"=>'books#create'
  get "books/new"
  get 'books/:id/edit'=>'books#edit', as: 'edit_book'
  patch "books/:id"=>"books#update" ,as: 'update_book'
  root :to =>'homes#index'
  delete 'books/:id' => 'books#destroy',as: 'destroy_book'
  
  
end
