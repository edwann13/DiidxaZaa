Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :words do 
  	collection do
  		# get 'addWord/:id' => as: 'addWord' 
      # get ':id', to: 'words#addWord'
      get 'dest'
  		post 'create'
  		get 'carousel/:data' => 'words#carousel', as: 'carousel_set', to: 'words#carousel'
    end
    
    member do
      get 'userConfig', to: 'words#activate'
      post 'userConfig', to: 'words#activate'
      get 'addWord'
      get 'Update', to: 'words#update'
      post 'Update', to: 'words#update'
    end
  end

  root 'words#index'


  get 'activateUsers', to: 'words#activateUsers'



  

end
