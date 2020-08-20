class Week < ApplicationRecord
    has_many :days
    has_many :lists
end
