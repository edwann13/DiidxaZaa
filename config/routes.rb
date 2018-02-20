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
      get 'addWord'
    end
  end

  root 'words#index'

  

end
