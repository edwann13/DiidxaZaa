Rails.application.routes.draw do
  devise_for :users

  # devise_scope :users do 
  #   get :showUsers, :to => 'users#show'
  # end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :words do 
  	

  	collection do
  		get 'carousel/:data' => 'words#carousel', as: 'carousel_set', to: 'words#carousel'
  		get 'allWords' => 'words#allWords'
      get 'showUsers' => 'words#showUsers'

      # create a route that takes in the id of the user
      get 'getUser/:id' => 'words#showUser', as: 'get_user'
      
      #initialize a post and change the data of the current user 
      post 'getUser/:id' => 'words#updateUserAdmin', as: 'update_user_admin'

      # create a new user using the post method with the given data
      get 'newUser' => 'words#newUser', as: 'new_user'
      post 'createUser' => 'words#createUser', as: 'create_user'
    end
  end

  root 'words#index'

end
