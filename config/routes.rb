Rails.application.routes.draw do
  resources :list_entries
  resources :lists
  resources :list_entry_list_items
  resources :meals
  resources :days
  resources :weeks
  resources :meal_food_items
  # resources :days
  # resources :meals
  # resources :lists
  # resources :list_entries
  # resources :list_items
  # resources :food_items
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
