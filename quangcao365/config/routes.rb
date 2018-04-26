Rails.application.routes.draw do 
   scope '/api' do
    mount_devise_token_auth_for 'User', at: 'auth'

    resources :articles
    resources :reports
    resources :users
    get 'phones'   , to: 'users#phones'
  end
end
