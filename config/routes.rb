Rails.application.routes.draw do
  devise_for :users
	root to: 'posts#index'
  resources :posts do 
  	resources :comments do
  		member do
  			put "like" => "comments#upvote"
  			put "unlike" => "comments#downvote"
  		end
  	end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
