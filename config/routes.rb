Rails.application.routes.draw do
  root to: 'public/homes#top'
  get '/about' => 'public/homes#about'
  
  devise_for :customers,skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }
  
  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
    #registrations: "admin/registrations",
    sessions: "admin/sessions"
  }
  
  get '/customers' => 'public/customers#show'
  
  namespace :admin do
        get '/' => 'homes#top'
  end
  
end
