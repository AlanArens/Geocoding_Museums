Rails.application.routes.draw do 

  root to: 'museum#home'

  get 'index', to:'museum#index'

end
