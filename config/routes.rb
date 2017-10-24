Rails.application.routes.draw do
  get 'home/index'
  root 'home#index'

  get 'api/get_feed' => 'api/v1/feed#get_feed'
  get 'api/login' => 'api/v1/user#create_user'
  get 'api/login' => 'api/v1/user#login'

end
