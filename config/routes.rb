Rails.application.routes.draw do
  # get 'home/index'
 resources :books

 root to: 'home#index'

 delete 'books/:id' => 'books#destroy', as: 'destroy_book'
end


  # get 'bookers/new'

  # # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # get 'top' => 'homes#top'

  # post 'bookers' => 'bookers#create'

  # get 'bookers' => 'bookers#index'

  # get 'bookers/:id' => 'bookers#show' ,as: 'bookers'

  # get 'bookers/:id/edit' => 'bookers#edit', as: 'edit_bookers'

  # patch 'bookers/:id' => 'bookers#update', as:'update_bookers'

# rails g model Book
# →db/migrate/....　にtitle, bodyのカラムを加える。
# →rails db:migrate
# rails g controller books
# rails d model List

# rails d controller todolists
