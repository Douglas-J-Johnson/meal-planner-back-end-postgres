class FoodItem < ApplicationRecord
    has_many :meals, through: :meal_food_items
end
