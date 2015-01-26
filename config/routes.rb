Meowmates::Application.routes.draw do

  root to: 'home#index'

  devise_for :user

  # Standard GET routing.
  get "home/index"
  get 'home/get_email' => 'home#get_email'
  get "home/show" => "home#show"
  get "home/login" => "home#login"
  get "animal/get_animals" => "animal#get_animals"

  # Mailboxer

  resources :messages
  resources :conversations

  # resources :conversations, only: [:index, :show, :new, :create] do
  #   member do
  #     post :reply
  #     post :trash
  #     post :untrash
  #   end
  # end

  resources :home do
    member do
      post :new
      post :reply
      post :trash
      post :untrash
    end
  end

  resources :messages do
    member do
      post :new
    end
  end

  resources :conversations do
    member do
      post :reply
      post :trash
      post :untrash
    end

    collection do
      get :trashbin
      post :empty_trash
    end
  end

  resources :animal, :profile

end
