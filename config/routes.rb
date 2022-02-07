Rails.application.routes.draw do
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "book"=>'books#index'
  get 'books/:id'=>'books#show'
  post "book"=>"books#create"
  post "books"=>'books#create'
  get "books/new"
  get 'books/edit'
  get "top"=>'homes#index'
  delete 'books/:id' => 'books#destroy'
  
end
