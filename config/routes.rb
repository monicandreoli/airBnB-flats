Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # A home page listing flats
  get '/flats', to: 'flats#index'

  # A dynamic show page for a specific flat
  get '/flats/:id', to: 'flats#show', as: :flat
  # verb '/path', to: 'controller_name#action_name', as: :prefix_name
end
