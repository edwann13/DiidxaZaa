Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :words do 
  	

  	collection do
  		get 'carousel/:data' => 'words#carousel', as: 'carousel_set', to: 'words#carousel'
  		get 'allWords' => 'words#allWords'
    end
  end

  root 'words#index'

end
