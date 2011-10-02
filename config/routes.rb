Rails.application.routes.draw do

  resources :inquiries, :as => 'contact'

  namespace :admin do
    resources :inquiries
    resource  :inquiries_settings
  end
  
end