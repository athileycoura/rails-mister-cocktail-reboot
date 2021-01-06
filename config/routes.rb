Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'cocktails', to: 'cocktails#index'
  get 'cocktails/new', to: 'cocktails#new'
  get 'cocktails/:id', to: 'cocktails#show', as: :cocktail
  post 'cocktails', to: 'cocktails#create'

  get 'cocktails/:id/doses/new', to: 'doses#new', as: :doses
  post 'cocktails/:id/doses', to: 'doses#create'
  delete 'doses/:id', to: 'doses#destroy'

end
