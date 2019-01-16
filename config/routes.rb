Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  scope 'api' do
  	scope 'user' do
  		post 'signin' => 'user#signin'
  	end
  	put 'user' => 'user#update'
  end
end
