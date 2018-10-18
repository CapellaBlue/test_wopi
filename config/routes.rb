Rails.application.routes.draw do
  root to: 'static_pages#ome'
  get 'static_pages/home'
  scope '/testhash' do
    namespace :wopi do
      resources :files do
        member do
          get 'contents'
        end
      end
    end
  end
end
