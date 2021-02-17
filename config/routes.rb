Rails.application.routes.draw do
  
  resources:products do
  	collection do
    	get 'exit'
  	end
    post 'scanner'
  end
end
