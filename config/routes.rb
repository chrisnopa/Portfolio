Rails.application.routes.draw do
  resources :comments
  devise_for :users, path: '', path_names: {sign_in:'connexion', sign_out:'deconnexion', sign_up:"inscription"}
  resources :portfolios, except: [:show] do
    put :sort, on: :collection
  end
  get 'portfolios/:id', to: "portfolios#show", as: 'portfolio_show'

  get 'angular-items', to: "portfolios#angular"
  get '/about-me', to: "pages#about"
  get '/contact', to: "pages#contact"
  resources :blogs do
    member do
      get :toggle_status
    end
  end

root to: "pages#home"
end
