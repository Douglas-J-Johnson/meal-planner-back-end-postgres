class Meal < ApplicationRecord
  belongs_to :day
  has_many :food_items, through: :meal_food_items
end
