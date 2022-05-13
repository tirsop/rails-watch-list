Rails.application.routes.draw do
  resources :lists, only: [:index, :show, :new, :create] do
    resources :bookmarks, only: [:new, :create]
  end
  delete '/bookmarks/:id', to: 'bookmarks#destroy', as: :bookmark
  # resources :bookmarks, only: :destroy
end
