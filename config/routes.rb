Rails.application.routes.draw do
  get 'home/index'
  root 'home#index'

  get 'api/get_feed' => 'api/v1/feed#get_feed'

  # match 'api/get_feed' => 'feed#get_feed'

  namespace :api, constraints: { format: :json } do
    namespace :v1 do
      resource :feed, only: [:get_feed]
    end
  end

end
