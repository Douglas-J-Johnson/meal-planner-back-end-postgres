Rails.application.routes.draw do
  resources :list_entry_list_items
  resources :meal_food_items
  resources :weeks
  # resources :days
  # resources :meals
  # resources :lists
  # resources :list_entries
  # resources :list_items
  # resources :food_items
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
