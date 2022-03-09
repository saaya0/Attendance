Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  devise_for :admins, controllers: {
    registrations: "admin/registrations",
    sessions: "admin/sessions"
  }

  scope module: :admin do

    get 'admin/menu' => 'admins#menu'

    resources :admins, only: [:index]
    resources :users

  end

  root to: 'homes#top'

end

