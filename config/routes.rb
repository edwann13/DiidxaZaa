Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :words do 
  	collection do
  		get 'carousel/:data' => 'words#carousel', as: 'carousel_set', to: 'words#carousel'
    end
  end

  root 'words#index'

end
