Rails.application.routes.draw do

resources :words
resources :search

get '/', to: 'welcome#index'
get 'search/show', to: 'search#show'

end

# root "home#index"
#  get 'random_shirt', to: "random_shirt#index"
#  get 'search', to: 'search#index'
#  resources :shirts, except: [:destroy]
#  resources :tags, only: [:index, :edit]
