Rails.application.routes.draw do
  devise_for :authors
  get 'home/index'
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  scope module: 'authors' do
    resources :posts do
      resources :post_elements
    end
  end

end
