class Day < ApplicationRecord
  belong_to :week
  has_many :meals
end
